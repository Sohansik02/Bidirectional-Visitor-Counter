`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2024 22:27:13
// Design Name: 
// Module Name: demux14_tb
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


module demux14_tb;
reg in,s1,s0;
wire d0,d1,d2,d3;

//dut instantiation
demux14 dm4x1(in,d0,d1,d2,d3,s1,s0);

//initiation
initial
begin
in=0;s1=0;s0=0;
end

//variation
initial
begin
for(integer i=0;i<9;i=i+1)
  begin
  {in,s1,s0}=i;
  #10;
  end
end

//monitor value
initial
begin
$monitor($time,"in=%b,s1=%b,s0=%b,d3=%b,d2=%b,d1=%b,d0=%b",in,s1,s0,d3,d2,d1,d0);
#90 $finish;
end

endmodule
