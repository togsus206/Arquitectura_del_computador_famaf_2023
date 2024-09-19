module ejer13 (output logic [15:0] c, input logic reset, clk);
  logic [15:0] a, a_next, b, b_next;

  always_ff @(posedge clk) begin
    a <= a_next;
    b <= b_next;
    c <= a_next + b_next;
  end

  always_comb begin
    if (reset) begin
      a_next = '0;
      b_next = '0;
    end else begin
      a_next = a + 16'd113;
      b_next = b + 16'd127;
    end
  end
endmodule


SOLUCION: A
/*
Compilar el codigo del ejercicio
luego ir a Tools-> Netlist Viewer -> RTL viewer
para ver el dibujo
*/
