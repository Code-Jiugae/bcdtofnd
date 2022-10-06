`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/05 11:34:39
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
    input i_switch_0, i_switch_1, i_switch_2,
    output o_sum, o_carry
    );

    wire w_sum_0, w_carry_0, w_carry_1;

    HalfAdder HA0(
        .i_switch_0(i_switch_0),
        .i_switch_1(i_switch_1),
        .o_sum(w_sum_0),
        .o_carry(w_carry_0)
    );

    HalfAdder HA1(
        .i_switch_0(w_sum_0),
        .i_switch_1(i_switch_2),
        .o_sum(o_sum),
        .o_carry(w_carry_1)
    );

    assign o_carry = w_carry_0 | w_carry_1;
endmodule
