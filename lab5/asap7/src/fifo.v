//=========================================================================
// FIFO Template
//-------------------------------------------------------------------------
//

module fifo #(parameter WIDTH = 8, parameter LOGDEPTH = 3) (
    input clk,
    input rst,

    input enq_valid,
    input [WIDTH-1:0] enq_data,
    output enq_ready,

    output deq_valid,
    output [WIDTH-1:0] deq_data,
    input deq_ready

);

localparam DEPTH = (1 << LOGDEPTH);

// the buffer itself. Take note of the 2D syntax.
reg [WIDTH-1:0] buffer [DEPTH-1:0];
// read pointer
reg [LOGDEPTH-1:0] rptr;
// write pointer
reg [LOGDEPTH-1:0] wptr;
// is the buffer full? This is needed for when rptr == wptr
reg full;

// Define any additional regs or wires you need (if any) here
wire [LOGDEPTH-1:0] wptr_next;
wire [LOGDEPTH-1:0] rptr_next;

// use "fire" to indicate when a valid transaction has been made
wire enq_fire;
wire deq_fire;

assign enq_fire = enq_valid & enq_ready;
assign deq_fire = deq_valid & deq_ready;

assign wptr_next = wptr + enq_fire;
assign rptr_next = rptr + deq_fire;

always @(posedge clk) begin
  if (rst) begin
    // clear everything
    full <= 1'b0;
    rptr <= {LOGDEPTH{1'b0}};
    wptr <= {LOGDEPTH{1'b0}};
  end else begin

    // Your code here
    wptr <= wptr_next;
    rptr <= rptr_next;
    buffer[wptr] <= enq_fire ? enq_data : buffer[wptr];
    full <= (wptr_next == rptr_next) & (full | enq_fire);

  end
end

// Additional code here, if needed
assign enq_ready = ~full;
assign deq_valid = (wptr != rptr) | full; // ~empty
assign deq_data = buffer[rptr];

endmodule
