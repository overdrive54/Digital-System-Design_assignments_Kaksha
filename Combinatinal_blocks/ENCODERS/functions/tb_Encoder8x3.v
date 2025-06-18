`timescale 1ns / 1ps
module tb_Encoder8x3;
    
    reg [7:0] in;
    wire [2:0] out;
    
    Encoder8x3 uut (.in(in), .out(out));
    
    initial begin
        $monitor("Time=%0t | Input=%b | Output=%b", $time, in, out);
        
        in = 8'b00000001; #10;
        in = 8'b00000010; #10;
        in = 8'b00000100; #10;
        in = 8'b00001000; #10;
        in = 8'b00010000; #10;
        in = 8'b00100000; #10;
        in = 8'b01000000; #10;
        in = 8'b10000000; #10;
        
        $finish;
    end
endmodule
