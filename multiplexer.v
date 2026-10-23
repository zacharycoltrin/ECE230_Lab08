module multiplexer(
        input [1:0] sel, 
        input Enable,
        input [3:0] A,
        input [3:0] B,
        input [3:0] C,
        input [3:0] D, 
        output [3:0] Y
    );
    
    assign Y = Enable ? (sel == 2'b00 ? A :
                sel == 2'b01 ? B : 
                sel == 2'b10 ? C : 
                sel == 2'b11 ? D : 4'b0000) : 4'b0000;
endmodule
