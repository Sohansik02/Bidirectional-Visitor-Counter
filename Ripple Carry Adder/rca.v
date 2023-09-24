module full_adder (
  input wire a,
  input wire b,
  input wire cin,
  output wire sum,
  output wire cout
);

  assign {cout, sum} = a + b + cin;

endmodule

module ripple_carry_adder_4bit (
  input wire [3:0] A, // 4-bit input A
  input wire [3:0] B, // 4-bit input B
  output wire [3:0] S, // 4-bit sum output
  output wire Cout // Carry-out
);

  wire [3:0] cout; // Carry-out from each full adder

  full_adder fa0 (.a(A[0]), .b(B[0]), .cin(1'b0), .sum(S[0]), .cout(cout[0]));
  full_adder fa1 (.a(A[1]), .b(B[1]), .cin(cout[0]), .sum(S[1]), .cout(cout[1]));
  full_adder fa2 (.a(A[2]), .b(B[2]), .cin(cout[1]), .sum(S[2]), .cout(cout[2]));
  full_adder fa3 (.a(A[3]), .b(B[3]), .cin(cout[2]), .sum(S[3]), .cout(Cout));

endmodule
