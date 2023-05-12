
// Implement a vector dot product of a and b
// using a single-port SRAM of 5-bit address width, 16-bit data width

module dot_product_1SRAM #(
  WIDTH = 16
) (
  input clk,
  input rst,

  input [31:0]      vector_size,

  // input vector a
  input [WIDTH-1:0] a_data,
  input             a_valid,
  output            a_ready,

  // input vector b
  input [WIDTH-1:0] b_data,
  input             b_valid,
  output            b_ready,

  // dot product result c
  output [WIDTH-1:0] c_data,
  output             c_valid,
  input              c_ready
);

endmodule
