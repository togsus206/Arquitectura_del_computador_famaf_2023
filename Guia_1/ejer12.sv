/*
module ejer12 (input logic Clk, ShiftIn, load, ShiftEn,
				  input logic [3:0] Parallelin,
				  output logic [3:0] ShiftOut,
					output logic [3:0] RegContent);
					
		logic [3:0] shift_reg;
		always_ff @(posedge Clk) BEGIN(ESTARIA FALTANDO)
			if(load)
				shift_reg <= ParallelIn;
			else if (ShiftEn)
				shift_reg[7:4] <= {shift_reg[2:0], ShiftIn};
		end
		
		begin
			_________shifout_____________ ______«=_____ shift_reg[3];
			RegContent __________«=______ shift_reg;
		end

endmodule


/*
module regPS (input _______________ Clk, ShiftIn, load, ShiftEn,
				  input logic [3:0] ____________________,
				  output ________________ ShiftOut,
					output logic [3:0] RegContent);
		___________________ [3:0] shift_reg;
		___________________ @(posedge Clk)
		if(____________________________)
			shift_reg <= ParallelIn;
		else if (ShiftEn)
			_________________________ <= {shift_reg[2:0], ShiftIn};
			____________________________
		
		begin
			______________________ ___________ shift_reg[3];
			RegContent ________________ shift_reg;
		end

____________________________

*/
