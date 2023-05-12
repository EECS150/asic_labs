
module dot_product_tb;

  localparam integer WIDTH = 16;
  localparam integer SIZE  = 16;

  reg clk = 0;
  reg rst;
  always #(`CLOCK_PERIOD / 2) clk = ~clk;

  // Test vectors for a and b
  reg [WIDTH-1:0] tv_a [SIZE-1:0];
  reg [WIDTH-1:0] tv_b [SIZE-1:0];
  // We will compare the "software" version of the dot product with
  // the hardware implementation
  reg [WIDTH-1:0] sw_dot_product_result;
  integer i;
  initial begin
    #0;
    sw_dot_product_result = 0;

    tv_a[0]  = 0;
    tv_a[1]  = 2;
    tv_a[2]  = 4;
    tv_a[3]  = 6;
    tv_a[4]  = 8;
    tv_a[5]  = 10;
    tv_a[6]  = 12;
    tv_a[7]  = 14;
    tv_a[8]  = 16;
    tv_a[9]  = 18;
    tv_a[10] = 20;
    tv_a[11] = 22;
    tv_a[12] = 24;
    tv_a[13] = 26;
    tv_a[14] = 28;
    tv_a[15] = 30;

    tv_b[0]  = 1;
    tv_b[1]  = 3;
    tv_b[2]  = 5;
    tv_b[3]  = 7;
    tv_b[4]  = 9;
    tv_b[5]  = 11;
    tv_b[6]  = 13;
    tv_b[7]  = 15;
    tv_b[8]  = 17;
    tv_b[9]  = 19;
    tv_b[10] = 21;
    tv_b[11] = 23;
    tv_b[12] = 25;
    tv_b[13] = 27;
    tv_b[14] = 29;
    tv_b[15] = 31;

    @(negedge clk);
    for (i = 0; i < SIZE; i = i + 1) begin
      sw_dot_product_result = sw_dot_product_result + tv_a[i] * tv_b[i];
    end
  end

  reg [WIDTH-1:0] a_data, b_data;
  reg a_valid, b_valid;
  wire a_ready, b_ready;

  wire [WIDTH-1:0] c_data;
  wire c_valid;
  reg c_ready;

  reg [31:0] vector_size;

  dot_product #(.WIDTH(WIDTH)) dut (
    .clk(clk),
    .rst(rst),

    .vector_size(vector_size),

    .a_data(a_data),
    .a_valid(a_valid),
    .a_ready(a_ready),

    .b_data(b_data),
    .b_valid(b_valid),
    .b_ready(b_ready),

    .c_data(c_data),
    .c_valid(c_valid),
    .c_ready(c_ready)
  );

  // Debug info
  always @(posedge clk) begin
    $display("At time %d, state_a=%d, state_b_val=%d, state_c_val=%d, a_idx=%d, a_data=%d, b_idx=%d, b_data=%d, c_idx=%d, sram_a_rdata=%d, sram_b_rdata=%d, c_data=%d",
      $time, dut.state_a_val, dut.state_b_val, dut.state_c_val,
      dut.a_idx_val, dut.a_data,
      dut.b_idx_val, dut.b_data,
      dut.c_idx_val,
      dut.sram_a_rdata, dut.sram_b_rdata, dut.c_data
    );

  end

  // Count the number of cycles to evaluate performance
  reg [31:0] num_cycles = 0;
  always @(posedge clk) begin
    if (rst == 0)
      num_cycles <= num_cycles + 1;
  end

  integer k;

  // Provide stimulus
  initial begin
    #0;
    $vcdpluson;

    rst = 1;
    vector_size = SIZE;
    a_data = 0;
    b_data = 0;
    a_valid = 0;
    b_valid = 0;

    // Hold reset signal for some time
    repeat (10) @(posedge clk);
    // Note: we should reset on the negedge clk to prevent
    // race behavior (caught by +evalorder in VCS)
    @(negedge clk);
    rst = 0;

    // Write test data into SRAMs of DUT
    for (k = 0; k < vector_size; k = k + 1) begin
      // We should adopt a practice of changing signals
      // on the negedge clk
      @(negedge clk);
      a_data = tv_a[k];
      b_data = tv_b[k];
      a_valid = 1'b1;
      b_valid = 1'b1;
    end

    // Ready to accept output from DUT
    @(negedge clk);
    a_valid = 1'b0;
    b_valid = 1'b0;
    c_ready = 1'b1;

    // Wait until the dp result is valid
    while (c_valid == 1'b0) begin
      @(posedge clk);
    end

    // Wait for a duration of negedge to give an ample time
    // for the result to properly stabilize
    // This turns out to be quite important in post-par sim with timing
    // annotated
    @(negedge clk);

    // Check result
    $display("Result: hw=%d, sw=%d", c_data, sw_dot_product_result);
    if (c_data == sw_dot_product_result)
      $display("TEST PASSED!");
    else
      $display("TEST FAILED!");

    $display("Number of cycles: %d", num_cycles);

    $vcdplusoff;

    $finish();
  end

  // Timeout check
  initial begin
    // Wait for 1000 ns. Shouldn't be this long
    #1000;
    $display("TIMEOUT");
    $finish();
  end

endmodule
