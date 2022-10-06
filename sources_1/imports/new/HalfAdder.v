`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/05 10:41:10
// Design Name: 
// Module Name: HalfAdder
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


module HalfAdder(
    input i_switch_0,
    input i_switch_1,
    output o_sum, o_carry
    );

    assign o_sum = i_switch_0 ^ i_switch_1;
    assign o_carry = i_switch_0 & i_switch_1;
endmodule
