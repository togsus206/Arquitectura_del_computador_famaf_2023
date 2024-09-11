module imem #(parameter N = 32) (input logic  [5:0]   addr,
											output logic [N-1:0] q);

	
	logic [31:0] ROM [0:63] = '{32'hcb1e03de, 32'h8b040000, 32'h00000000, 32'h00000000, 
										32'h8b040001, 32'h00000000, 32'h00000000, 32'h8b040022, 
										32'h00000000, 32'h00000000, 32'h8b040043, 32'hf80003c0, 
										32'hf80083c1, 32'hf80103c2, 32'hf80183c3, 32'hb400001e, 
										32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 
										32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 
										32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 
										32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000,
										32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000,
										32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000,
										32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000,
										32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000,
										32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000,
										32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000,
										32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000,
										32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000};
																				 
	
	always_comb
		q = ROM[addr];
	
endmodule