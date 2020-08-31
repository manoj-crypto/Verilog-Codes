module mux_2_1_tb();
reg a,b,s;
wire y;
mux_2_1 DUT (.a(a),.b(b),.s(s),.y(y));
initial
begin
	{a,b,s}=0;
	#100;
end
always #40 a=~a;
always #20 b=~b;
always #10 s=~s;
always@(a or b or s)
$monitor("the values are time=%t,a=%b,b=%b,s=%b,y=%b",$time,a,b,s,y);
endmodule
