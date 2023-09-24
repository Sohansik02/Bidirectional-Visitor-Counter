module demux_1to4 (
  input wire data_in,        // Input data
  input wire [1:0] select,  // 2-bit select input
  output wire out0,         // Output 0
  output wire out1,         // Output 1
  output wire out2,         // Output 2
  output wire out3          // Output 3
);

  assign out0 = (select == 2'b00) ? data_in : 1'b0;
  assign out1 = (select == 2'b01) ? data_in : 1'b0;
  assign out2 = (select == 2'b10) ? data_in : 1'b0;
  assign out3 = (select == 2'b11) ? data_in : 1'b0;

endmodule
