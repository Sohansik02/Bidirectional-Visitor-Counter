module decoder24(
    output reg [3:0] out,
    input en,
    input s1,
    input s0
);

always @* begin
    if (en)
     begin
        case({s1, s0})
            2'b00: out = 4'b0001;
            2'b01: out = 4'b0010;
            2'b10: out = 4'b0100;
            2'b11: out = 4'b1000;
        endcase
    end
    else
        out = 4'bxxxx;
end

endmodule
