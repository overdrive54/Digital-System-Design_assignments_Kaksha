module Encoder8x3 (
    input [7:0] in,
    output reg [2:0] out
);
    function [2:0] encode;
        input [7:0] in;
        begin
            case (in)
                8'b00000001: encode = 3'b000;
                8'b00000010: encode = 3'b001;
                8'b00000100: encode = 3'b010;
                8'b00001000: encode = 3'b011;
                8'b00010000: encode = 3'b100;
                8'b00100000: encode = 3'b101;
                8'b01000000: encode = 3'b110;
                8'b10000000: encode = 3'b111;
                default: encode = 3'bxxx;
            endcase
        end
    endfunction
    
    always @(*) begin
        out = encode(in);
    end
endmodule
