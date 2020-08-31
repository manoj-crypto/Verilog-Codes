module mux_2_1(input a,b,s,output y);
wire i1,i2,sbar;
not not1(sbar,s);
and AND1(i1,a,sbar),(i2,s,b);
or OR1(y,i1,i2);
endmodule