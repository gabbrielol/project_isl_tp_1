module echo_codificador (
  input RE,
  input RS,
  input A,
  input B,
  input C,
  input D,
  output S1,
  output S2,
  output S3,
  output S4,
  output S5
);

  assign S1 = ((RE & ~RS & ~B & ~C & ~D) | (RE & ~RS & ~A & B & C) | (RE & ~RS & A & ~B & ~C) | (RE & ~RS & A & ~B & ~D));
  assign S2 = ((RE & ~RS & ~B & ~C) | (RE & ~RS & ~A & B & C & D) | (RE & ~RS & A & ~B));
  assign S3 = ((RE & ~RS & ~B & ~C) | (RE & ~RS & ~B & ~D) | (RE & ~RS & A & ~B) | (RE & ~RS & A & ~C & ~D));
  assign S4 = ((RE & ~RS & ~A & ~B) | (RE & ~RS & ~B & D) | (RE & ~RS & ~B & C) | (RE & ~RS & A & B & ~C));
  assign S5 = ((RE & ~RS & ~A & ~B) | (RE & ~RS & ~A & ~C & ~D) | (RE & ~RS & ~B & C) | (RE & ~RS & A & B & ~C) | (RE & ~RS & A & B & ~D));
endmodule

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
    assign a = (~(~S1 | S5 | (S2 & ~S4)));
    assign b = (~(~S2 | ~S5));
    assign c = (~(~S2 | S3));
    assign d = (~((~S1 & ~S3) | (S2 & ~S4) | (S2 & S5)));
    assign e = (~((~S1 & ~S5) | (~S3 & S4) | (~S1 & S2) | (S2 & ~S3)));
    assign f = (~((~S1 & ~S3) | (S2 & S4)));
    assign g = (~((~S3 & S5) | S2));
endmodule