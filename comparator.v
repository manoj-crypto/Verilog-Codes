module comparator(input [3:0]a,b,output greater,less,equal,not_equal);
assign greater=(a>b)?1'b1:1'b0;
assign less=(a<b)?1'b1:1'b0;
assign equal=(a==b)?1'b1:1'b0;
assign not_equal=(a!=b)?1'b1:1'b0;
endmodule