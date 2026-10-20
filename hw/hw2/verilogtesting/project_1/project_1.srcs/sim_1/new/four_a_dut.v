`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2026 08:18:37 PM
// Design Name: 
// Module Name: four_a_dut
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


module four_a_dut();
    reg  [3:0] in_test;
    wire [2:0] out_test;
    four_a dut(in_test, out_test);
    initial begin
        in_test = 4'b0000; #5 $display("in=0000 -> out=%h%h%h", out_test[2],out_test[1], out_test[0]);
        in_test = 4'b0001; #5 $display("in=0001 -> out=%h%h%h", out_test[2],out_test[1], out_test[0]);
        in_test = 4'b0011; #5 $display("in=0011 -> out=%h%h%h", out_test[2],out_test[1], out_test[0]);
        in_test = 4'b0111; #5 $display("in=0111 -> out=%h%h%h", out_test[2],out_test[1], out_test[0]);
        in_test = 4'b1111; #5 $display("in=1111 -> out=%h%h%h", out_test[2],out_test[1], out_test[0]);
    end

endmodule
