module mux_8_1_tb();
reg [7:0]a;
reg [2:0]s;
wire y;
 mux_8_1  DUT (.a(a),.s(s),.y(y));
initial
begin
	{a,s}=0;
end
initial
begin
	a=8'b00001010;
	#10 s=3'b000;
	#10 s=3'b001;
	#10 s=3'b010;
	#10 s=3'b011;
	#10 s=3'b100;
	#10 s=3'b101;
	#10 s=3'b110;
	#10 s=3'b111;
	#100;
end
endmodule
	