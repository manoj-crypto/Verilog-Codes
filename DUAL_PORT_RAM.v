module dual_port(input clk,reset,input [7:0]data_in,input re,we,input [7:0]add_wr,read_wr,output reg [7:0]data_out);
integer i;
reg[7:0]mem[15:0];
always@(posedge clk)
begin
	if(reset==0)
		begin
		data_out<=0;
		for(i=0;i<16;i=i+1)
		begin
			mem[i]<=0;
		end
		end
	else
	begin
		if(we==1)
		mem[add_wr]<=data_in;
		if(re==1)
		data_out<=mem[read_wr];
		end
		end
endmodule
