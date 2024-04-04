`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2024 19:04:19
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

module mux21(out,i0,i1,s);
   input i0,i1,s;
   output reg out;
   always@*
   begin
   if(s==0)
   out=i0;
   else
   out=i1;
   end
endmodule
module mux41(out,i3,i2,i1,i0,s1,s0);
input i3,i2,i1,i0,s1,s0;
output out;
wire w1,w2;
mux21 M2X10(w1,i3,i2,s0);
mux21 M2X11(w2,i1,i0,s0);
mux21 M2X12(out,w1,w2,s1);
endmodule
