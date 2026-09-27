`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2026 09:26:26 AM
// Design Name: 
// Module Name: tutorial
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


module tutorial(
    input A,
    input B,
    input C,
    output D,
    output E
    );
    wire v1;
    and G1(v1,A,B);
    not G2(E,C);
    or G3(D,v1,E);
endmodule
