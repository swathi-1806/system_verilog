//implementation of 8x1 mux using 4x1 mux

//4x1 mux 
module mux_4x1(i0,i1,i2,i3,s,y);
input i0,i1,i2,i3;
input [1:0]s;
output reg y;
always@(*)begin
    if(s==2'b00)y=i0;
	  else if(s==2'b01)y=i1;
	  else if(s==2'b10)y=i2;
	  else y=i3;
end
endmodule

//8x1 usg 4x1
module mux_8x1(i,s,y);
input [7:0]i;
input [2:0]s;
output reg y;
wire w1,w2;
//------------------------------------------------------------
//mux_4x1 u1(.i(i[7:4]),.s(s[1:0]),.y(w1));
//mux_4x1 u2(.i(i[3:0]),.s(s[1:0]),.y(w2));
//mux_4x1 u3(.i(i[1'b0,1'b0,w2,w1]),.s([s[2],1'b0]),.y(y));
//endmodule
//------------------------------------------------------------

mux_4x1 u1(
.i0(i[0]),
.i1(i[1]),
.i2(i[2]),
.i3(i[3]),
.s(s[1:0]),
.y(w1)
);

mux_4x1 u2(
.i0(i[4]),
.i1(i[5]),
.i2(i[6]),
.i3(i[7]),
.s(s[1:0]),
.y(w2)
);

mux_4x1 u3(
.i0(w1),
.i1(w2),
.i2(1'b0),
.i3(1'b0),
.s({1'b0,s[2]}),
.y(y)
);
endmodule
