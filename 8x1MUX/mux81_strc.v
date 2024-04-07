`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2024 16:22:14
// Design Name: 
// Module Name: mux81_strc
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

module mux81_strc(out,i7,i6,i5,i4,i3,i2,i1,i0,s2,s1,s0);
input i7,i6,i5,i4,i3,i2,i1,i0;
input s2,s1,s0;
output out;
wire w1,w2;

mux41 mux4x1_1(w1,i7,i6,i5,i4,s1,s0);
mux41 mux4x1_2(w2,i3,i2,i1,i0,s1,s0);

mux21 mux2x1_1(out,w1,w2,s2);
endmodule
