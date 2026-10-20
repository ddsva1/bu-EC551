`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2026 08:07:11 PM
// Design Name: 
// Module Name: four_a
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


module four_a(
    input [3:0] four_in,
    output [2:0] three_out
    );
    wire and_01, and_23; //for the [2] digit
and(and_01, four_in[0], four_in[1]);
and(and_23, four_in[2], four_in[3]);
and(three_out[2], and_01, and_23);


wire xor_01, xor_23; //for the [0] digit
xor(xor_01, four_in[0], four_in[1]);
xor(xor_23, four_in[2], four_in[3]);
xor(three_out[0], xor_01, xor_23);


//wire and_01, and_23 reused from calculation for [2] digit.
wire and_02, and_03, and_12, and_13;
wire or_allpairs, nand_0123;
//and(and_01, four_in[0], four_in[1]); already calculated
and(and_02, four_in[0], four_in[2]);
and(and_03, four_in[0], four_in[3]);
and(and_12, four_in[1], four_in[2]);
and(and_13, four_in[1], four_in[3]);
//and(and_23, four_in[2], four_in[3]); already calculated

or(or_allpairs, and_01, and_02, and_03, and_12, and_13, and_23);
nand(nand_0123, four_in[0], four_in[1],four_in[2], four_in[3]);
and(three_out[1], or_allpairs, nand_0123);

endmodule
