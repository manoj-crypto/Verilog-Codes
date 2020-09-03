module comparator_tb();
reg [3:0]a,b;
wire greater,less,equal,not_equal;
integer i,j;
comparator DUT (a,b,greater,less,equal,not_equal);
initial
begin
	/*for(i=0;i<16;i=i+1)
	begin
		a=i;
			for(j=0;j<16;j=j+1)
				begin
					b=j;
				end */
			a=$random;
			b=$random;
end
initial
$monitor("the values of a=%b,b=%b",a,b);
endmodule