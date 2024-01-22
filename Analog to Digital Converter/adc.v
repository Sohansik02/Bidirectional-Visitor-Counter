module sar_adc (
  input wire clk,        // Clock input
  input wire start,      // Start conversion signal
  input wire [7:0] analog_in,  // Analog input (8-bit)
  output reg [7:0] digital_out,  // Digital output (8-bit)
  output reg conversion_done   // Conversion done signal
);

  reg [7:0] register;    // Internal register for SAR logic
  reg [2:0] comparator;  // Internal comparator for SAR logic
  reg conversion_busy;   // Internal signal to track conversion status

  // SAR logic
  always @(posedge clk) begin
    if (conversion_busy) begin
      if (comparator >= analog_in)  // SAR comparison
        register[6] <= 1'b1;
      else
        register[6] <= 1'b0;

      if (register[6] == 1'b1)
        register[5:0] <= register[5:0] | (1 << comparator);  // Set the current bit

      comparator <= comparator - register[6];

      if (register[6] == 1'b1)
        register[7] <= 1'b0;  // Set MSB to 0 for the next iteration
      else
        register[7] <= 1'b1;  // Set MSB to 1 for the next iteration

      if (comparator == 0) begin
        digital_out <= register[7:0];  // Output the digital result
        conversion_done <= 1'b1;      // Conversion is done
        conversion_busy <= 1'b0;       // Reset conversion status
      end
    end
  end

  // Start conversion on rising edge of 'start'
  always @(posedge clk) begin
    if (start && ~conversion_busy) begin
      register <= 8'b0;
      comparator <= 3'b111;  // Initialize comparator to 7
      conversion_done <= 1'b0;
      conversion_busy <= 1'b1;
    end
  end

endmodule
