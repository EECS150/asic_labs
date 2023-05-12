
// Compute the division of DP0(dp0_a, dp0_b) / DP1(dp1_a, dp1_b)

module dp_div #(
  WIDTH = 16
) (
  input clk,
  input rst,

  input [31:0]      vector_size,

  // input vector a for DP0
  input [WIDTH-1:0] dp0_a_data,
  input             dp0_a_valid,
  output            dp0_a_ready,

  // input vector b for DP0
  input [WIDTH-1:0] dp0_b_data,
  input             dp0_b_valid,
  output            dp0_b_ready,

  // input vector a for DP1
  input [WIDTH-1:0] dp1_a_data,
  input             dp1_a_valid,
  output            dp1_a_ready,

  // input vector b for DP1
  input [WIDTH-1:0] dp2_b_data,
  input             dp2_b_valid,
  output            dp2_b_ready,

  // Divider result
  output [WIDTH*2-1:0] div_out_bits,
  output               div_out_valid,
  input                div_out_ready
);


  // TODO: Your code
  // We would need:
  // - two dot_product_1SRAM module
  // - one divider
  // - two FIFOs, one for each dot_product_1SRAM 
  // Make sure that the divider gets the input divident and input divisor
  // in the same clock cycle



endmodule
