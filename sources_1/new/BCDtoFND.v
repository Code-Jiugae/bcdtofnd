`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/06 13:37:37
// Design Name: 
// Module Name: BCDtoFND
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


module BCDtoFND(
    input [1:0] i_digitSelect,
    input [3:0] i_value,
    input i_en,
    output [3:0] o_digit,
    output [7:0] o_fndFont
    );

    FND_Select_Decoder fndDigitDecoder(
        .i_digitSelect(i_digitSelect),
        .i_en(i_en),
        .o_digit(o_digit)
    );

    BCDtoFND_Decoder fndFontDecoder(
        .i_value(i_value),
        .i_en(i_en),
        .o_font(o_fndFont)
    );
endmodule
