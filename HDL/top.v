`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2022 01:31:40 AM
// Design Name: 
// Module Name: top_new
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


module top(
    input fpga_clk,
//    input enable,
    input reset_in,
    output [3:0] PUF_OUT
    );
    
    (* DONT_TOUCH = "true" *) reg [35:0] count=0;
    (* DONT_TOUCH = "true" *) reg enable = 1'b0;
    (* DONT_TOUCH = "true" *) reg compare = 1'b0;
    (* DONT_TOUCH = "true" *) reg before_compare_reset = 1'b0;
    
    (* DONT_TOUCH = "true" *) reg reset_n;
    (* DONT_TOUCH = "true" *) reg [63:0] PUF_OUT_REG;
    
    (* DONT_TOUCH = "true" *) wire [15:0] RO0_counter_out, RO1_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO2_counter_out, RO3_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO4_counter_out, RO5_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO6_counter_out, RO7_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO8_counter_out, RO9_counter_out;
    
    (* DONT_TOUCH = "true" *) wire [15:0] RO10_counter_out, RO11_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO12_counter_out, RO13_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO14_counter_out, RO15_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO16_counter_out, RO17_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO18_counter_out, RO19_counter_out;
    
    (* DONT_TOUCH = "true" *) wire [15:0] RO20_counter_out, RO21_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO22_counter_out, RO23_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO24_counter_out, RO25_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO26_counter_out, RO27_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO28_counter_out, RO29_counter_out;
    
    (* DONT_TOUCH = "true" *) wire [15:0] RO30_counter_out, RO31_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO32_counter_out, RO33_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO34_counter_out, RO35_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO36_counter_out, RO37_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO38_counter_out, RO39_counter_out;
    
    (* DONT_TOUCH = "true" *) wire [15:0] RO40_counter_out, RO41_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO42_counter_out, RO43_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO44_counter_out, RO45_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO46_counter_out, RO47_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO48_counter_out, RO49_counter_out;
    
    (* DONT_TOUCH = "true" *) wire [15:0] RO50_counter_out, RO51_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO52_counter_out, RO53_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO54_counter_out, RO55_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO56_counter_out, RO57_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO58_counter_out, RO59_counter_out;
    
    (* DONT_TOUCH = "true" *) wire [15:0] RO60_counter_out, RO61_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO62_counter_out, RO63_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO64_counter_out, RO65_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO66_counter_out, RO67_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO68_counter_out, RO69_counter_out;
    
    (* DONT_TOUCH = "true" *) wire [15:0] RO70_counter_out, RO71_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO72_counter_out, RO73_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO74_counter_out, RO75_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO76_counter_out, RO77_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO78_counter_out, RO79_counter_out;
    
    (* DONT_TOUCH = "true" *) wire [15:0] RO80_counter_out, RO81_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO82_counter_out, RO83_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO84_counter_out, RO85_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO86_counter_out, RO87_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO88_counter_out, RO89_counter_out;
    
    (* DONT_TOUCH = "true" *) wire [15:0] RO90_counter_out, RO91_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO92_counter_out, RO93_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO94_counter_out, RO95_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO96_counter_out, RO97_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO98_counter_out, RO99_counter_out;
    
    (* DONT_TOUCH = "true" *) wire [15:0] RO100_counter_out, RO101_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO102_counter_out, RO103_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO104_counter_out, RO105_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO106_counter_out, RO107_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO108_counter_out, RO109_counter_out;
    
    (* DONT_TOUCH = "true" *) wire [15:0] RO110_counter_out, RO111_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO112_counter_out, RO113_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO114_counter_out, RO115_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO116_counter_out, RO117_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO118_counter_out, RO119_counter_out;
    
    (* DONT_TOUCH = "true" *) wire [15:0] RO120_counter_out, RO121_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO122_counter_out, RO123_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO124_counter_out, RO125_counter_out;
    (* DONT_TOUCH = "true" *) wire [15:0] RO126_counter_out, RO127_counter_out;
    
    
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO0_RO1 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO0_counter_out), .RO1_counter_out(RO1_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO2_RO3 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO2_counter_out), .RO1_counter_out(RO3_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO4_RO5 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO4_counter_out), .RO1_counter_out(RO5_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO6_RO7 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO6_counter_out), .RO1_counter_out(RO7_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO8_RO9 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO8_counter_out), .RO1_counter_out(RO9_counter_out));
    
    
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO10_RO11 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO10_counter_out), .RO1_counter_out(RO11_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO12_RO13 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO12_counter_out), .RO1_counter_out(RO13_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO14_RO15 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO14_counter_out), .RO1_counter_out(RO15_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO16_RO17 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO16_counter_out), .RO1_counter_out(RO17_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO18_RO19 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO18_counter_out), .RO1_counter_out(RO19_counter_out));
    
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO20_RO21 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO20_counter_out), .RO1_counter_out(RO21_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO22_RO23 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO22_counter_out), .RO1_counter_out(RO23_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO24_RO25 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO24_counter_out), .RO1_counter_out(RO25_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO26_RO27 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO26_counter_out), .RO1_counter_out(RO27_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO28_RO29 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO28_counter_out), .RO1_counter_out(RO29_counter_out));
    
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO30_RO31 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO30_counter_out), .RO1_counter_out(RO31_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO32_RO33 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO32_counter_out), .RO1_counter_out(RO33_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO34_RO35 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO34_counter_out), .RO1_counter_out(RO35_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO36_RO37 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO36_counter_out), .RO1_counter_out(RO37_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO38_RO39 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO38_counter_out), .RO1_counter_out(RO39_counter_out));
    
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO40_RO41 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO40_counter_out), .RO1_counter_out(RO41_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO42_RO43 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO42_counter_out), .RO1_counter_out(RO43_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO44_RO45 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO44_counter_out), .RO1_counter_out(RO45_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO46_RO47 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO46_counter_out), .RO1_counter_out(RO47_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO48_RO49 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO48_counter_out), .RO1_counter_out(RO49_counter_out));

    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO50_RO51 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO50_counter_out), .RO1_counter_out(RO51_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO52_RO53 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO52_counter_out), .RO1_counter_out(RO53_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO54_RO55 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO54_counter_out), .RO1_counter_out(RO55_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO56_RO57 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO56_counter_out), .RO1_counter_out(RO57_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO58_RO59 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO58_counter_out), .RO1_counter_out(RO59_counter_out));
    
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO60_RO61 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO60_counter_out), .RO1_counter_out(RO61_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO62_RO63 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO62_counter_out), .RO1_counter_out(RO63_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO64_RO65 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO64_counter_out), .RO1_counter_out(RO65_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO66_RO67 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO66_counter_out), .RO1_counter_out(RO67_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO68_RO69 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO68_counter_out), .RO1_counter_out(RO69_counter_out));
    
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO70_RO71 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO70_counter_out), .RO1_counter_out(RO71_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO72_RO73 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO72_counter_out), .RO1_counter_out(RO73_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO74_RO75 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO74_counter_out), .RO1_counter_out(RO75_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO76_RO77 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO76_counter_out), .RO1_counter_out(RO77_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO78_RO79 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO78_counter_out), .RO1_counter_out(RO79_counter_out));
    
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO80_RO81 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO80_counter_out), .RO1_counter_out(RO81_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO82_RO83 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO82_counter_out), .RO1_counter_out(RO83_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO84_RO85 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO84_counter_out), .RO1_counter_out(RO85_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO86_RO87 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO86_counter_out), .RO1_counter_out(RO87_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO88_RO89 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO88_counter_out), .RO1_counter_out(RO89_counter_out));
    
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO90_RO91 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO90_counter_out), .RO1_counter_out(RO91_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO92_RO93 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO92_counter_out), .RO1_counter_out(RO93_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO94_RO95 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO94_counter_out), .RO1_counter_out(RO95_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO96_RO97 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO96_counter_out), .RO1_counter_out(RO97_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO98_RO99 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO98_counter_out), .RO1_counter_out(RO99_counter_out));
    
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO100_RO101 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO100_counter_out), .RO1_counter_out(RO101_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO102_RO103 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO102_counter_out), .RO1_counter_out(RO103_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO104_RO105 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO104_counter_out), .RO1_counter_out(RO105_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO106_RO107 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO106_counter_out), .RO1_counter_out(RO107_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO108_RO109 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO108_counter_out), .RO1_counter_out(RO109_counter_out));
    
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO110_RO111 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO110_counter_out), .RO1_counter_out(RO111_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO112_RO113 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO112_counter_out), .RO1_counter_out(RO113_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO114_RO115 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO114_counter_out), .RO1_counter_out(RO115_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO116_RO117 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO116_counter_out), .RO1_counter_out(RO117_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO118_RO119 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO118_counter_out), .RO1_counter_out(RO119_counter_out));
    
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO120_RO121 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO120_counter_out), .RO1_counter_out(RO121_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO122_RO123 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO122_counter_out), .RO1_counter_out(RO123_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO124_RO125 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO124_counter_out), .RO1_counter_out(RO125_counter_out));
    (* DONT_TOUCH = "true" *) ro_pair_counter_block RO126_RO127 (.enable(enable), .reset_n(reset_n), .RO0_counter_out(RO126_counter_out), .RO1_counter_out(RO127_counter_out));
        
    always @ (posedge fpga_clk) begin
        reset_n = (~before_compare_reset) & reset_in;
        
        if (before_compare_reset)
            before_compare_reset = ~before_compare_reset;
        
        count <= count+1;
        if (count == 500 && !enable) begin
            count <= 0;
            enable = ~enable;
        end
            
        else if (count == 10200 && enable) begin
            count <= 0;
            enable = ~enable;
        end
        
        else if (count == 10100 && enable) begin
            compare <= 1'b1;
        end
        
        else if (count == 100 && enable) begin
            before_compare_reset <= 1'b1;
        end
        
//        if (!enable)
//            enable = 1'b1;
        
        if (enable && compare) begin
            compare <= 1'b0;
            
            if (RO1_counter_out > RO0_counter_out) begin
                PUF_OUT_REG[0] = 1'b1;
                
            end
            else
                PUF_OUT_REG[0] = 1'b0;
                
            if (RO2_counter_out > RO3_counter_out) begin
                PUF_OUT_REG[1] = 1'b1;
                
            end
            else
                PUF_OUT_REG[1] = 1'b0;
            
            if (RO4_counter_out > RO5_counter_out) begin
                PUF_OUT_REG[2] = 1'b1;
                
            end
            else
                PUF_OUT_REG[2] = 1'b0;
                
            if (RO6_counter_out > RO7_counter_out) begin
                PUF_OUT_REG[3] = 1'b1;
                
            end
            else
                PUF_OUT_REG[3] = 1'b0;
                
            if (RO8_counter_out > RO9_counter_out) begin
                PUF_OUT_REG[4] = 1'b1;
                
            end
            else
                PUF_OUT_REG[4] = 1'b0;
                
            if (RO10_counter_out > RO11_counter_out) begin
                PUF_OUT_REG[5] = 1'b1;
                
            end
            else
                PUF_OUT_REG[5] = 1'b0;
                
            if (RO12_counter_out > RO13_counter_out) begin
                PUF_OUT_REG[6] = 1'b1;
                
            end
            else
                PUF_OUT_REG[6] = 1'b0;
            
            if (RO14_counter_out > RO15_counter_out) begin
                PUF_OUT_REG[7] = 1'b1;
                
            end
            else
                PUF_OUT_REG[7] = 1'b0;
            
            if (RO16_counter_out > RO17_counter_out) begin
                PUF_OUT_REG[8] = 1'b1;
                
            end
            else
                PUF_OUT_REG[8] = 1'b0;
            
            if (RO18_counter_out > RO19_counter_out) begin
                PUF_OUT_REG[9] = 1'b1;
                
            end
            else
                PUF_OUT_REG[9] = 1'b0;
                
            if (RO20_counter_out > RO21_counter_out) begin
                PUF_OUT_REG[10] = 1'b1;
                
            end
            else
                PUF_OUT_REG[10] = 1'b0;
                
            if (RO22_counter_out > RO23_counter_out) begin
                PUF_OUT_REG[11] = 1'b1;
                
            end
            else
                PUF_OUT_REG[11] = 1'b0;
                
            if (RO24_counter_out > RO25_counter_out) begin
                PUF_OUT_REG[12] = 1'b1;
                
            end
            else
                PUF_OUT_REG[12] = 1'b0;
                
            if (RO26_counter_out > RO27_counter_out) begin
                PUF_OUT_REG[13] = 1'b1;
                
            end
            else
                PUF_OUT_REG[13] = 1'b0;
                
            if (RO28_counter_out > RO29_counter_out) begin
                PUF_OUT_REG[14] = 1'b1;
                
            end
            else
                PUF_OUT_REG[14] = 1'b0;
                
            if (RO30_counter_out > RO31_counter_out) begin
                PUF_OUT_REG[15] = 1'b1;
                
            end
            else
                PUF_OUT_REG[15] = 1'b0;
                
            if (RO32_counter_out > RO33_counter_out) begin
                PUF_OUT_REG[16] = 1'b1;
                
            end
            else
                PUF_OUT_REG[16] = 1'b0;
                
            if (RO34_counter_out > RO35_counter_out) begin
                PUF_OUT_REG[17] = 1'b1;
                
            end
            else
                PUF_OUT_REG[17] = 1'b0;
                
            if (RO36_counter_out > RO37_counter_out) begin
                PUF_OUT_REG[18] = 1'b1;
                
            end
            else
                PUF_OUT_REG[18] = 1'b0;
                
            if (RO38_counter_out > RO39_counter_out) begin
                PUF_OUT_REG[19] = 1'b1;
                
            end
            else
                PUF_OUT_REG[19] = 1'b0;
                
            if (RO40_counter_out > RO41_counter_out) begin
                PUF_OUT_REG[20] = 1'b1;
                
            end
            else
                PUF_OUT_REG[20] = 1'b0;
                
            if (RO42_counter_out > RO43_counter_out) begin
                PUF_OUT_REG[21] = 1'b1;
                
            end
            else
                PUF_OUT_REG[21] = 1'b0;
                
            if (RO44_counter_out > RO45_counter_out) begin
                PUF_OUT_REG[22] = 1'b1;
                
            end
            else
                PUF_OUT_REG[22] = 1'b0;
                
            if (RO46_counter_out > RO47_counter_out) begin
                PUF_OUT_REG[23] = 1'b1;
                
            end
            else
                PUF_OUT_REG[23] = 1'b0;
                
            if (RO48_counter_out > RO49_counter_out) begin
                PUF_OUT_REG[24] = 1'b1;
                
            end
            else
                PUF_OUT_REG[24] = 1'b0;
                
            if (RO50_counter_out > RO51_counter_out) begin
                PUF_OUT_REG[25] = 1'b1;
                
            end
            else
                PUF_OUT_REG[25] = 1'b0;
                
            if (RO52_counter_out > RO53_counter_out) begin
                PUF_OUT_REG[26] = 1'b1;
                
            end
            else
                PUF_OUT_REG[26] = 1'b0;
                
            if (RO54_counter_out > RO55_counter_out) begin
                PUF_OUT_REG[27] = 1'b1;
                
            end
            else
                PUF_OUT_REG[27] = 1'b0;
                
            if (RO56_counter_out > RO57_counter_out) begin
                PUF_OUT_REG[28] = 1'b1;
                
            end
            else
                PUF_OUT_REG[28] = 1'b0;
                
            if (RO58_counter_out > RO59_counter_out) begin
                PUF_OUT_REG[29] = 1'b1;
                
            end
            else
                PUF_OUT_REG[29] = 1'b0;
                
            if (RO60_counter_out > RO61_counter_out) begin
                PUF_OUT_REG[30] = 1'b1;
                
            end
            else
                PUF_OUT_REG[30] = 1'b0;
                
            if (RO62_counter_out > RO63_counter_out) begin
                PUF_OUT_REG[31] = 1'b1;
                
            end
            else
                PUF_OUT_REG[31] = 1'b0;
                
            if (RO64_counter_out > RO65_counter_out) begin
                PUF_OUT_REG[32] = 1'b1;
                
            end
            else
                PUF_OUT_REG[32] = 1'b0;
                
            if (RO66_counter_out > RO67_counter_out) begin
                PUF_OUT_REG[33] = 1'b1;
                
            end
            else
                PUF_OUT_REG[33] = 1'b0;
                
            if (RO68_counter_out > RO69_counter_out) begin
                PUF_OUT_REG[34] = 1'b1;
                
            end
            else
                PUF_OUT_REG[34] = 1'b0;
                
            if (RO71_counter_out > RO70_counter_out) begin
                PUF_OUT_REG[35] = 1'b1;
                
            end
            else
                PUF_OUT_REG[35] = 1'b0;
                
            if (RO72_counter_out > RO73_counter_out) begin
                PUF_OUT_REG[36] = 1'b1;
                
            end
            else
                PUF_OUT_REG[36] = 1'b0;
            
            if (RO74_counter_out > RO75_counter_out) begin
                PUF_OUT_REG[37] = 1'b1;
                
            end
            else
                PUF_OUT_REG[37] = 1'b0;
                
            if (RO76_counter_out > RO77_counter_out) begin
                PUF_OUT_REG[38] = 1'b1;
                
            end
            else
                PUF_OUT_REG[38] = 1'b0;
                
            if (RO78_counter_out > RO79_counter_out) begin
                PUF_OUT_REG[39] = 1'b1;
                
            end
            else
                PUF_OUT_REG[39] = 1'b0;
                
            if (RO81_counter_out > RO80_counter_out) begin
                PUF_OUT_REG[40] = 1'b1;
                
            end
            else
                PUF_OUT_REG[40] = 1'b0;
                
            if (RO82_counter_out > RO83_counter_out) begin
                PUF_OUT_REG[41] = 1'b1;
                
            end
            else
                PUF_OUT_REG[41] = 1'b0;
            
            if (RO84_counter_out > RO85_counter_out) begin
                PUF_OUT_REG[42] = 1'b1;
                
            end
            else
                PUF_OUT_REG[42] = 1'b0;
                
            if (RO86_counter_out > RO87_counter_out) begin
                PUF_OUT_REG[43] = 1'b1;
                
            end
            else
                PUF_OUT_REG[43] = 1'b0;
                
            if (RO88_counter_out > RO89_counter_out) begin
                PUF_OUT_REG[44] = 1'b1;
                
            end
            else
                PUF_OUT_REG[44] = 1'b0;
                
            if (RO91_counter_out > RO90_counter_out) begin
                PUF_OUT_REG[45] = 1'b1;
                
            end
            else
                PUF_OUT_REG[45] = 1'b0;
                
            if (RO92_counter_out > RO93_counter_out) begin
                PUF_OUT_REG[46] = 1'b1;
                
            end
            else
                PUF_OUT_REG[46] = 1'b0;
            
            if (RO94_counter_out > RO95_counter_out) begin
                PUF_OUT_REG[47] = 1'b1;
                
            end
            else
                PUF_OUT_REG[47] = 1'b0;
                
            if (RO96_counter_out > RO97_counter_out) begin
                PUF_OUT_REG[48] = 1'b1;
                
            end
            else
                PUF_OUT_REG[48] = 1'b0;
                
            if (RO98_counter_out > RO99_counter_out) begin
                PUF_OUT_REG[49] = 1'b1;
                
            end
            else
                PUF_OUT_REG[49] = 1'b0;
                
            if (RO101_counter_out > RO100_counter_out) begin
                PUF_OUT_REG[50] = 1'b1;
                
            end
            else
                PUF_OUT_REG[50] = 1'b0;
                
            if (RO102_counter_out > RO103_counter_out) begin
                PUF_OUT_REG[51] = 1'b1;
                
            end
            else
                PUF_OUT_REG[51] = 1'b0;
            
            if (RO104_counter_out > RO105_counter_out) begin
                PUF_OUT_REG[52] = 1'b1;
                
            end
            else
                PUF_OUT_REG[52] = 1'b0;
                
            if (RO106_counter_out > RO107_counter_out) begin
                PUF_OUT_REG[53] = 1'b1;
                
            end
            else
                PUF_OUT_REG[53] = 1'b0;
                
            if (RO108_counter_out > RO109_counter_out) begin
                PUF_OUT_REG[54] = 1'b1;
                
            end
            else
                PUF_OUT_REG[54] = 1'b0;
                
            if (RO111_counter_out > RO110_counter_out) begin
                PUF_OUT_REG[55] = 1'b1;
                
            end
            else
                PUF_OUT_REG[55] = 1'b0;
                
            if (RO112_counter_out > RO113_counter_out) begin
                PUF_OUT_REG[56] = 1'b1;
                
            end
            else
                PUF_OUT_REG[56] = 1'b0;
            
            if (RO114_counter_out > RO115_counter_out) begin
                PUF_OUT_REG[57] = 1'b1;
                
            end
            else
                PUF_OUT_REG[57] = 1'b0;
                
            if (RO116_counter_out > RO117_counter_out) begin
                PUF_OUT_REG[58] = 1'b1;
                
            end
            else
                PUF_OUT_REG[58] = 1'b0;
                
            if (RO118_counter_out > RO119_counter_out) begin
                PUF_OUT_REG[59] = 1'b1;
                
            end
            else
                PUF_OUT_REG[59] = 1'b0;
                
            if (RO121_counter_out > RO120_counter_out) begin
                PUF_OUT_REG[60] = 1'b1;
                
            end
            else
                PUF_OUT_REG[60] = 1'b0;
                
            if (RO122_counter_out > RO123_counter_out) begin
                PUF_OUT_REG[61] = 1'b1;
                
            end
            else
                PUF_OUT_REG[61] = 1'b0;
            
            if (RO124_counter_out > RO125_counter_out) begin
                PUF_OUT_REG[62] = 1'b1;
                
            end
            else
                PUF_OUT_REG[62] = 1'b0;
                
            if (RO126_counter_out > RO127_counter_out) begin
                PUF_OUT_REG[63] = 1'b1;
                
            end
            else
                PUF_OUT_REG[63] = 1'b0;
                        
        end
        else
            begin 
                PUF_OUT_REG = 64'b0;
            end
    end
    
    assign PUF_OUT = PUF_OUT_REG[3:0];
    
    
endmodule
