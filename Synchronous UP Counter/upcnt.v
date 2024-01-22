module synchronous_counter (
  input wire clk,      // Clock input
  input wire reset,    // Reset input
  output reg [3:0] count  // 4-bit counter output
);

  // Synchronous counter logic
  always @(posedge clk or posedge reset) begin
    if (reset)       // Reset the counter when the reset signal is active
      count <= 4'b0000;
    else
      count <= count + 1;  // Increment the counter on each rising clock edge
  end

endmodule

module tb_synchronous_counter;
  reg clk;           // Clock signal
  reg reset;         // Reset signal
  wire [3:0] count;  // Counter output

  // Clock generation
  always begin
    #5 clk = ~clk;  // Toggle the clock every 5 time units
  end

  // Instantiate the synchronous counter module
  synchronous_counter uut (
    .clk(clk),
    .reset(reset),
    .count(count)
  );

  // Testbench stimulus
  initial begin
    clk = 0;
    reset = 0;

    #10 reset = 1;   // Assert reset after 10 time units
    #10 reset = 0;   // Deassert reset after another 10 time units

    #50 $finish;     // Finish the simulation after 50 time units
  end
endmodule
