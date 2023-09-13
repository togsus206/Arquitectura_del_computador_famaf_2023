module signext (input logic [31:0] a,
					 output logic [63:0] y);		 
	always_comb 
			casez(a[31:21])
				//ldur or stur:
				11'b111_1100_00?0: y = { {55{a[20]}}, a[20:12]};
				
				//cbz
				11'b101_1010_0???: y = {{45{a[23]}}, a[23:5]};
			
				//otras
				default: y='0;
			endcase
endmodule