module gcd_arbiter #(parameter W = 32) (
  input clk,
  input reset,

  // this will be connected to the input FIFO
  input operands_val,
  input [W-1:0] operands_bits_A,
  input [W-1:0] operands_bits_B,
  output operands_rdy,

  output request0_val,
  output [W-1:0] request0_operands_bits_A,
  output [W-1:0] request0_operands_bits_B,
  input request0_rdy,

  output request1_val,
  output [W-1:0] request1_operands_bits_A,
  output [W-1:0] request1_operands_bits_B,
  input request1_rdy,

  // This will be connected to the output FIFO
  output result_val,
  output [W-1:0] result_bits_data,
  input result_rdy,

  input response0_val,
  input [W-1:0] response0_result_bits_data,
  output response0_rdy,

  input response1_val,
  input [W-1:0] response1_result_bits_data,
  output response1_rdy
);

// Keep track of which GCD unit you will enqueue to next
reg gcd_enq; 
wire next_gcd_enq;

// Keep track of which GCD unit you will dequeue from next
reg gcd_deq;
wire next_gcd_deq;

// Define our "fire" wires
wire operands_fire, request0_fire, request1_fire, result_fire, response0_fire, response1_fire;

// Wires and assignments go here
// Hint: Most of your code will be assignments

// operands logic
assign operands_fire = operands_val & operands_rdy;
assign operands_rdy = (gcd_enq == 1'b0) ? request0_rdy : request1_rdy; // Current enqueue will set rdy.
// update the next enqueue
assign next_gcd_enq = (operands_fire) ? ~gcd_enq : gcd_enq; // gcd_enq toggles.
// share the bus
assign request0_operands_bits_A = operands_bits_A;
assign request0_operands_bits_B = operands_bits_B;
assign request1_operands_bits_A = operands_bits_A;
assign request1_operands_bits_B = operands_bits_B;
// allow val at the right place
assign request0_val = (gcd_enq == 1'b0) ? operands_val : 1'b0;
assign request1_val = (gcd_enq == 1'b1) ? operands_val : 1'b0;
//------------------------------------------------------------
// result_logic
assign result_fire = result_val & result_rdy;
assign result_val = (gcd_deq == 1'b0) ? response0_val : response1_val;
// update the next dequeue
assign next_gcd_deq = (result_fire) ? ~gcd_deq : gcd_deq;
// Mux the bus
assign result_bits_data = (gcd_deq == 1'b0) ? response0_result_bits_data : response1_result_bits_data;
// allow response at the right place
assign response0_rdy = (gcd_deq == 1'b0) ? result_rdy : 1'b0;
assign response1_rdy = (gcd_deq == 1'b1) ? result_rdy : 1'b0;

// Sequential logic goes here
// Be sure to implement reset! Look at fifo.v for an example
always @(posedge clk or posedge reset) begin
  if (reset) begin
    gcd_enq <= 1'b0;
    gcd_deq <= 1'b0;
  end else begin
    gcd_enq <= next_gcd_enq;
    gcd_deq <= next_gcd_deq;
  end
end

endmodule
