/* pg 337 - 4 bit comaprator */

module bm_DL_4_bit_comparator (A, B, AeqB, AgtB, AltB);
	input [3:0] A;
	input [3:0] B;
	output AeqB, AgtB, AltB;
	reg AeqB, AgtB, AltB;
		
	always @(A or B)
	begin
		if(A == B)
			AeqB = 1;
		else if (A > B)
			AgtB = 1;
		else
			AltB = 1;
	end
				
endmodule
