//Veriog code to display "maven" from the string "MAven silicon"//
module string_check();
reg[8*13:1]string_reg;
reg[8*13:1]s1;
initial
begin
	string_reg="maven silicon";
	s1=string_reg[104:65];
	$display("companys_name=%s",string_reg[104:65]);
end
endmodule