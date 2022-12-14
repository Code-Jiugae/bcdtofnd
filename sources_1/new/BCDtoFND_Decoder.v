`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/06 13:12:49
// Design Name: 
// Module Name: BCDtoFND_Decoder
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


module BCDtoFND_Decoder(
    input [3:0] i_value,
    input i_en,
    output [7:0] o_font
    );

    reg[7:0] r_font;
    assign o_font = r_font;

    always @(i_value or i_en) begin
        if(i_en) begin
            r_font = 8'hff;
        end
        else begin
            case(i_value)
                4'h0 : r_font = 8'hc0;
                4'h1 : r_font = 8'hf9;
                4'h2 : r_font = 8'ha4;
                4'h3 : r_font = 8'hb0;
                4'h4 : r_font = 8'h99;
                4'h5 : r_font = 8'h92;
                4'h6 : r_font = 8'h82;
                4'h7 : r_font = 8'hf8;
                4'h8 : r_font = 8'h80;
                4'h9 : r_font = 8'h90;
                4'ha : r_font = 8'h7f;
                default : r_font = 8'hff;
            endcase
        end
    end
endmodule
