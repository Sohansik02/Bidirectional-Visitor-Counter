`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2024 22:20:30
// Design Name: 
// Module Name: demux14
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


module demux14(in,d0,d1,d2,d3,s1,s0);
input in,s1,s0;
output reg d0,d1,d2,d3;
always@*
begin
case ({s1,s0})
     2'h0: {d0,d1,d2,d3} = {in,3'b0};
     2'h1: {d0,d1,d2,d3} = {1'b0,in,2'b0};
     2'h2: {d0,d1,d2,d3} = {2'b0,in,1'b0};
     2'h3: {d0,d1,d2,d3} = {3'b0,in};
 endcase
 end
endmodule
