//-----------------------------------------------------------------------------
//-- Divisor de reloj
//-- Señal de periodo igual al indicado
//-- El ancho del pulso positivo es de 1 ciclo de reloj
//--
//-- (c) BQ. September 2015. written by Juan Gonzalez (obijuan)
//-----------------------------------------------------------------------------
//-- GPL license
//-----------------------------------------------------------------------------
`include "divider.vh"

//-- ENTRADAS:
//--     -clk: Senal de reloj del sistema (12 MHZ en la iceStick)
//
//-- SALIDAS:
//--     - clk_out. Señal de salida para lograr la velocidad en baudios indicada
//--                Anchura de 1 periodo de clk. SALIDA NO REGISTRADA

module dividerp1(input wire clk,
                 input wire [17:0] pos,
                 input wire timer_ena,
                 output wire clk_out);

//-- Valor por defecto de la velocidad en baudios
parameter M = `T_20ms;

//-- Numero de bits para almacenar el divisor de baudios
parameter N = 18;

//-- Registro para implementar el contador modulo M
reg [N-1:0] divcounter = 0;

//-- Contador módulo M
always @(posedge clk)
    if (timer_ena)
      divcounter <= (divcounter == M - 1) ? 0 : divcounter + 1;
    else
      divcounter <= 0;

assign clk_out = (divcounter < pos) ? 1 : 0;


endmodule
