`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2024 19:09:31
// Design Name: 
// Module Name: mux4x1_tb
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


module mux4x1_tb;

//inout declaration
reg i3,i2,i1,i0,s1,s0;
wire out;

//dut instantiation
mux41 dut(.out(out),.i3(i3),.i2(i2),.i1(i1),.i0(i0),.s1(s1),.s0(s0));

//initalize values
initial
begin
{i3,i2,i1,i0,s1,s0}=6'b0;
end

//varying values
initial
begin
  for(integer i=0;i<32;i=i+1)
  begin
  {i3,i2,i1,s1,s0}=i;
  #5;
  end
 end
 
 //monitor values
 initial
 begin
 $monitor($time,"ns i3=%b,i2=%b,i1=%b,i0=%b,s1=%b,s0=%b,out=%b",i3,i2,i1,i0,s1,s0,out);
 #180 $finish;
 end
endmodule
