`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2024 19:29:54
// Design Name: 
// Module Name: mux41
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux41(out,i3,i2,i1,i0,s1,s0);
input i3,i2,i1,i0,s1,s0;
output reg out;

always@*
begin
 case ({s1,s0})
   2'b00:out=i0;
   2'b01:out=i1;
   2'b10:out=i2;
   2'b11:out=i3;
  endcase
end
endmodule
