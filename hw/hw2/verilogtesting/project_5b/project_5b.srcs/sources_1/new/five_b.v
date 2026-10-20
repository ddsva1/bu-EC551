`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2026 09:00:51 PM
// Design Name: 
// Module Name: five_b
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


module five_b(
    input clk,
    input rst,
    output reg [3:0] nextstate
    );
    always @(posedge clk, posedge rst) begin
    if (rst) begin
        nextstate <= 4'b0000;
    end else begin
        nextstate <= nextstate + 4'b0001;
    end
end

endmodule
