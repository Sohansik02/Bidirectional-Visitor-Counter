module mux_4x1 (
  input wire [3:0] in,  // 4 data inputs
  input wire [1:0] sel, // 2-bit select input
  output wire out       // Mux output
);

  assign out = (sel[1] & sel[0] & in[0]) |
               (sel[1] & ~sel[0] & in[1]) |
               (~sel[1] & sel[0] & in[2]) |
               (~sel[1] & ~sel[0] & in[3]);

endmodule
