
module divider #(
  WIDTH = 16
) (
  input clk,
  input rst,

  // div_in_bits contains both dividend and divisor
  input [WIDTH*2-1:0] div_in_bits
  input               div_in_valid,
  output              div_in_ready,

  // div_out_bits contains both quotient and remainder
  output [WIDTH*2-1:0] div_out_bits,
  output               div_out_valid,
  input                div_out_ready
);

  wire [WIDTH-1:0] divident = div_in_bits[WIDTH*1-1:0];
  wire [WIDTH-1:0] divisor  = div_in_bits[WIDTH*2-1:WIDTH];
  wire [WIDTH-1:0] quotient, remainder;
  assign div_out_bits = {quotient, remainder};

  // TODO: Your code

endmodule
