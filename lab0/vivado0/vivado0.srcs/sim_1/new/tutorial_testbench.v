`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2026 09:30:19 AM
// Design Name: 
// Module Name: tutorial_testbench
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


module tutorial_testbench(
    );
    reg A, B, C;//inputs
    wire D,E;//outputs
    
    tutorial tut_dut(.A(A),.B(B),.C(C),.D(D),.E(E));
    
    initial
    begin
        A=1'b0;
        B=1'b0;
        C=1'b0;
        
        #100 A=1'b1; B=1'b1; C=1'b1;
        #100 $finish;
    end
endmodule
