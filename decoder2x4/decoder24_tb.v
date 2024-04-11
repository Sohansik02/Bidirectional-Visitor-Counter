`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2024 20:59:39
// Design Name: 
// Module Name: decoder24_tb
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


module decoder24_tb;
reg en,s1,s0;
wire [3:0]out;

//dut instantiation
decoder24 dc2x4(out,en,s1,s0);

//instantiation
initial
begin
en=0;s1=0;s0=0;
end

//variation
initial
begin
#10
for(integer i=0;i<4;i=i+1)
  begin
    en=1;
    {s1,s0}=i;
    #10;
  end
 end
 
 //monitor
 initial
 begin
 $monitor($time,"en=%b,s1=%b,s0=%b,D0=%b,D1=%b,D2=%b,D3=%b",en,s1,s0,out[0],out[1],out[2],out[3]);
 #50 $finish;
 end

endmodule
