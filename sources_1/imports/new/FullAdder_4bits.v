`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/05 13:21:45
// Design Name: 
// Module Name: FullAdder_4bits
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


module FullAdder_4bits(
    input [3:0] i_a, i_b, 
    input i_c,
    output [3:0]o_sum,
    output o_carry
    );

    wire [3:0]w_carry;

    FullAdder FA0(
        .i_switch_0(i_a[0]),
        .i_switch_1(i_b[0]),
        .i_switch_2(i_c),
        .o_sum(o_sum[0]),
        .o_carry(w_carry[0])
    );

    FullAdder FA1(
        .i_switch_0(i_a[1]),
        .i_switch_1(i_b[1]),
        .i_switch_2(w_carry[0]),
        .o_sum(o_sum[1]),
        .o_carry(w_carry[1])
    );

    FullAdder FA2(
        .i_switch_0(i_a[2]),
        .i_switch_1(i_b[2]),
        .i_switch_2(w_carry[1]),
        .o_sum(o_sum[2]),
        .o_carry(w_carry[2])
    );

    FullAdder FA3(
        .i_switch_0(i_a[3]),
        .i_switch_1(i_b[3]),
        .i_switch_2(w_carry[2]),
        .o_sum(o_sum[3]),
        .o_carry(o_carry)
    );
endmodule
