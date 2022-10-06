`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/05 16:07:07
// Design Name: 
// Module Name: FullAdder_Sub_4bits
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


module FullAdder_Sub_4bits(
    input [3:0] i_a, i_b, 
    input i_mode,
    output [3:0]o_sum,
    output o_carry
    );

    wire [3:0] w_b;
    assign w_b = {4{i_mode}} ^ i_b;

    FullAdder_4bits AdderSub(
    .i_a(i_a), 
    .i_b(w_b),
    .i_c(i_mode),
    .o_sum(o_sum),
    .o_carry(o_carry)
    );
endmodule
