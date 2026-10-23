module top(
    input [15:0] sw, 
    input btnL, btnR, btnU, btnD, btnC,
    output [15:0] led
    );
    
    wire [3:0] mux_out;
    wire [1:0] concat_mux = {btnU, btnL};
    multiplexer mux(
    .A(sw[3:0]),
    .B(sw[7:4]),
    .C(sw[11:8]),
    .D(sw[15:12]),
    .sel(concat_mux),
    .Enable(btnC),
    .Y(mux_out)
    );

    wire [1:0] concat_demux = {btnR, btnD};
    demultiplexer demux (
    .In(mux_out),
    .sel(concat_demux),
    .Enable(btnC),
    .Aout(led[3:0]),
    .Bout(led[7:4]),
    .Cout(led[11:8]),
    .Dout(led[15:12])
    );
    
   
endmodule