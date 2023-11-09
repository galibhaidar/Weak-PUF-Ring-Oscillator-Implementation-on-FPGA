`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2022 12:38:42 PM
// Design Name: 
// Module Name: ring_oscillator_new
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


module ring_oscillator_new(
    input RO_enable,
    output RO_out
    );
    
    (* DONT_TOUCH = "true" *) wire nand_out, not_0_out, RO_out_feedback;
    (* DONT_TOUCH = "true" *) wire not_1_out, not_2_out, not_3_out, not_4_out;
    
     (* DONT_TOUCH = "true" *) nand nand_0 (nand_out, RO_enable, RO_out_feedback);
     (* DONT_TOUCH = "true" *) not not_0 (not_0_out, nand_out);
     (* DONT_TOUCH = "true" *) not not_1 (not_1_out, not_0_out);
     (* DONT_TOUCH = "true" *) not not_2 (not_2_out, not_1_out);
     (* DONT_TOUCH = "true" *) not not_3 (not_3_out, not_2_out);
     (* DONT_TOUCH = "true" *) not not_4 (not_4_out, not_3_out);
     (* DONT_TOUCH = "true", ALLOW_COMBINATORIAL_LOOPS = "true" *) not not_5 (RO_out_feedback, not_4_out);
     assign RO_out = RO_out_feedback;
endmodule
