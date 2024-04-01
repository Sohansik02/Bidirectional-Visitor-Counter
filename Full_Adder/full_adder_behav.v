`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2024 19:36:01
// Design Name: 
// Module Name: full_adder
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


module full_adder(sum,carry,a,b,cin);
input a,b,cin;
output reg sum,carry;

always@(sum,carry,a,b,cin)
begin
     sum=a^b^cin;
     carry=(a&b)|(cin&(a^b));
end
endmodule
