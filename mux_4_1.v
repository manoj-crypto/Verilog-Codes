module mux_4_1_tb();
reg [3:0]a;
reg [1:0]s;
wire y;
//instatntiate the DUT
mux_4_1 DUT (.a(a),.s(s),.y(y));
initial
begin
		{a,s}=0;
end
initial
begin
	 a=4'b0110;
	 a=4'b1001;
	 #10 s=2'b00;
	 #10 s=2'b01;
	 #10 s=2'b10;
	 #10 s=2'b11;
	 #20$finish;
end

endmodule
