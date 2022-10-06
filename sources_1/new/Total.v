`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/06 14:43:46
// Design Name: 
// Module Name: Total
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Total(
    input [3:0] i_a,
    input [3:0] i_b,
    input i_en,
    input [1:0]i_digitSelect,
    input i_cin,
    output [3:0] o_digit,
    output [7:0] o_fndFont
    );

    wire [3:0]w_sum;
    wire w_carry;

    BCDtoFND BCD2FND(
        .i_digitSelect(i_digitSelect),
        .i_en(i_en),

        .i_value(w_sum),

        .o_digit(o_digit),
        .o_fndFont(o_fndFont)
    );

    FullAdder_4bits FA4_0(
        .i_a(i_a),
        .i_b(i_b),
        .i_c(1'b0),
        .o_sum(w_sum),
        .o_carry(w_carry)
    );
    
endmodule
