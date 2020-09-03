module Dual_port_tb();
reg clk,re,we,reset;	//inputs
reg [7:0]read_wr,add_wr;
reg [7:0]data_in;
wire [7:0]data_out;
parameter CYCLE=20;
integer i,j;
dual_port DUT(.clk(clk),.reset(reset),.data_in(data_in),.re(re),.we(we),.add_wr(add_wr),.read_wr(read_wr),.data_out(data_out));	//initiating the Design under test module
//write clk toggling
always
begin
	#(CYCLE/2)
	clk<=1'b0;
	#(CYCLE/2)
	clk<=~clk;
end
task reset_in();
begin
	@(negedge clk)
	reset<=1'b0;
	@(negedge clk)
	reset<=1'b1;
end
endtask
task read();
begin
	@(negedge clk)
	re=1'b1;
	for(i=0;i<16;i=i+1)
	begin
	read_wr<=i;
	data_in<=i;
	end
end
endtask
task write();
begin
	@(negedge clk)
	we<=1'b1;
	for(j=0;j<16;j=j+1)
	begin
	add_wr<=j;
	data_in=j;
	end
end
endtask
task initialise();
begin
{clk,reset,data_in,add_wr,read_wr,re,we}=0;
end
endtask
initial	//Calling the tasks to initalise input generation
begin
	initialise();
	reset_in();
	read();
	write();
	#200;
	$finish;
end
endmodule
	
	
