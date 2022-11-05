`include "./verilog/echo_codificador.v"

module echo_display (
    input S1,
    input S2,
    input S3,
    input S4,
    input S5,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g
);    
    assign a = (~S1 | S5 | (S2 & ~S4));
    assign b = (~S2 | ~S5);
    assign c = (~S2 | S3);
    assign d = ((~S1 & ~S3) | (S2 & ~S4) | (S2 & S5));
    assign e = ((~S1 & ~S5) | (~S3 & S4) | (~S1 & S2) | (S2 & ~S3));
    assign f = ((~S1 & ~S3) | (S2 & S4));
    assign g = ((~S3 & S5) | S2);
endmodule
