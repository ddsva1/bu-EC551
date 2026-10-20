`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2026 09:16:06 PM
// Design Name: 
// Module Name: five_c_dut
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


module five_c_dut(
    );
    reg  clk = 0;
    reg rst = 0;
    wire [3:0] out_next;
    five_c dut(clk, rst, out_next);
    initial clk = 0;
    always #5 clk = ~clk;


    initial begin
        rst = 1;#10
        rst = 0;
        $display("in=0000 -> out=%h%h",out_next[3], out_next[2],out_next[1], out_next[0]);
        repeat(20) begin
            #10 $display("in=0000 -> out=%h%h",out_next[3], out_next[2],out_next[1], out_next[0]);
        end
        rst = 1'b1; $display("in=0000 -> out=%h%h",out_next[3], out_next[2],out_next[1], out_next[0]); #10
        repeat(10) begin
            $display("in=0000 -> out=%h%h",out_next[3], out_next[2],out_next[1], out_next[0]);
        end
        rst = 0;
        $display("in=0000 -> out=%h%h",out_next[3], out_next[2],out_next[1], out_next[0]);
        repeat(25) begin
            #10 $display("in=0000 -> out=%h%h",out_next[3], out_next[2],out_next[1], out_next[0]);
        end
        #300 $finish;
    end

endmodule
