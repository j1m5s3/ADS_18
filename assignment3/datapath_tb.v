module datapath_tb();
	reg[11:0]a,b,c;
	wire[2:0]result;

	datapath inst0(
			.a(a),
			.b(b),
			.c(c),
			.result(result));

	initial 
	begin
		a = 0;
		b = 0;
		c = 0;
		for(a = 0; a < 12; a = a+1) 
		begin
			for(b = 0; b < 12;b = b+1)
			begin
				for(c = 0; c < 12; c = c+1)
				begin
					#10;
					$display("a = %d, b= %d, c = %d, result = %b",a,b,c,result);
					#40;
				end
			end
		end
	end
endmodule
