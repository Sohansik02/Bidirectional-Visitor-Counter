`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2024 18:36:11
// Design Name: 
// Module Name: mux2_1_tb
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


module mux2_1_tb;
//inout definitions
reg i0,i1,s;
wire out;

//dut instantiation
mux21 dut(.out(out),.i0(i0),.i1(i1),.s(s));

//initiation of values
initial
begin
i0=0;i1=0;s=0;
end

//variation of values
initial
begin
 for(integer i=0;i<4;i=i+1)
  begin
  {i0,i1,s}=i;
  #10;
  end
end

//finalizing and monitoring
initial
begin
$monitor($time," ns i0=%b ,i1=%b , s=%b , out=%b ",i0,i1,s,out);
#50 $finish;
end
endmodule
