`timescale 1ns/1ps
module mc14585_tb();
	reg[4:0]A,B;
	wire AlB_in,AgB_in,AeqB_in;
	wire AlB_out,AgB_out,AeqB_out;
	//assign AlB_in = 0;
	//assign AgB_in = 0;
	//assign AeqB_in = 1;
	
	mc14585 mc14585_uut(
		.A(A),
		.B(B),
		.AlB_in(0),
		.AgB_in(1),
		.AeqB_in(1),
		.AlB_out(AlB_out),
		.AgB_out(AgB_out),
		.AeqB_out(AeqB_out));
	initial begin
		for(A=0;A<16;A=A+1) begin
			for(B=0;B<16;B=B+1) begin
				$display("A=%d and B=%d. AlB=%d,AgB=%d,AeqB=%d",A,B,
				AlB_out,AgB_out,AeqB_out);
				#100;
			end
		end
	end
endmodule
