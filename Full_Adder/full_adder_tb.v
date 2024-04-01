`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Sohan Sikdar
// 
// Create Date: 01.04.2024 18:46:31
// Design Name: 
// Module Name: Full_Adder_Tb
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


module Full_Adder_Tb;
//input and output declaration
reg a,b,cin;
wire sum,carry;

//module instantiation
full_adder dut(.sum(sum),.carry(carry),.a(a),.b(b),.cin(cin));

//value initialization
initial
begin
  a=0;b=0;cin=0;
end

//test bench variation
initial
begin
  for(integer i=1;i<8;i=i+1)
  begin
    {a,b,cin}=i;    //a,b,cin is concat opr and i is converted to decimal and assigned
    #10;
  end
 end
 
 //result printing to console
 initial
 begin
 $monitor($time," ns a=%b,b=%b,cin=%b,sum=%d,carry=%d",a,b,cin,sum,carry);
 #60 $finish;
 end
endmodule
