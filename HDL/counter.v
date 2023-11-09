`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2022 06:16:06 PM
// Design Name: 
// Module Name: counter
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


module counter( 
    input clk,
    input reset_n,
//    output [15:0] q
    output [15:0] q
    );
    
//    reg [15:0] count_val;


    reg [15:0] count_val;
    reg [31:0] clk_tick_count;
    
//    always @ (posedge clk) begin
//        if (!reset_n) begin
////            count_val = 16'b0;
//            count_val = 4'b0;
//            clk_tick_count = 32'b0;
            
//        end
//        else begin
//            if (clk_tick_count < 100000000)
//                clk_tick_count = clk_tick_count + 1;
//            else begin
//                count_val = count_val + 1;
//                clk_tick_count = 32'b0;
//            end
//        end
//    end


// TO USE SWITCH AS THE CLOCK 

always @ (posedge clk) begin
        if (!reset_n) begin
//            count_val = 16'b0;
            count_val = 16'b0;            
        end
        else begin
                count_val = count_val + 1;
            end
    end
    


    
    assign q = count_val;
endmodule
