`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2024 16:35:45
// Design Name: 
// Module Name: mux81
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


module mux81;
//port declratiaon
reg i7,i6,i5,i4,i3,i2,i1,i0;
reg s2,s1,s0;
wire out;

//dut instamtiaon
mux81_strc dut(.out(out),.i7(i7),.i6(i6),.i5(i5),.i4(i4),.i3(i3),.i2(i2),.i1(i1),.i0(i0),.s2(s2),.s1(s1),.s0(s0)
);
//initiation
initial
begin
{i7,i6,i5,i4,i3,i2,i1,i0}=8'b00000000;
s2=0;s1=0;s0=0;
end

//variation
initial
begin
 for(integer i=0;i<256;i=i+1)
 begin
 {i7,i6,i5,i4,i3,i2,i1,i0,s2,s1,s0}=i;
 #5;
 end
end



endmodule
