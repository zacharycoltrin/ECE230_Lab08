module demultiplexer(
    input Enable,
    input [3:0] In,
    input [1:0] sel,
    output [3:0] Aout, 
    output[3:0] Bout, 
    output [3:0] Cout, 
    output [3:0]Dout
    );
    
    assign Aout = Enable ? (sel == 2'b00 ? In : 4'b0000) : 4'b0000;
    assign Bout = Enable ? (sel == 2'b01 ? In : 4'b0000) : 4'b0000;
    assign Cout = Enable ? (sel == 2'b10 ? In : 4'b0000) : 4'b0000;
    assign Dout = Enable ? (sel == 2'b11 ? In : 4'b0000) : 4'b0000;
endmodule
