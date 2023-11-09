`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2022 11:01:52 PM
// Design Name: 
// Module Name: ro_pair_counter_block
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


module ro_pair_counter_block(
    input enable,
    input reset_n,
    output [15:0] RO0_counter_out, RO1_counter_out
    );
    
    (* DONT_TOUCH = "true" *) wire RO0_out, RO1_out;
    (* DONT_TOUCH = "true", ALLOW_COMBINATORIAL_LOOPS = "true" *) ring_oscillator_new RO0 (.RO_enable(enable), .RO_out(RO0_out));
    (* DONT_TOUCH = "true", ALLOW_COMBINATORIAL_LOOPS = "true" *) ring_oscillator_new RO1 (.RO_enable(enable), .RO_out(RO1_out));
    
    (* DONT_TOUCH = "true" *) counter RO0_counter (.clk(RO0_out), .reset_n(reset_n), .q(RO0_counter_out));
    (* DONT_TOUCH = "true" *) counter RO1_counter (.clk(RO1_out), .reset_n(reset_n), .q(RO1_counter_out));
    
endmodule
