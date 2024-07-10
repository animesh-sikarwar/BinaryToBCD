`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////


module main_module( input [7:0] a, output [3:0] display_on,output [6:0] segment,input clk

    );
    wire clk_out;
    wire [1:0] count;
    wire [3:0]ones,tens,hundreds;
    wire [3:0] mux_out;
    bin2bcd b1(a,{hundreds,tens,ones});
    slow_clock s1(clk,clk_out);
    counter c1(clk_out,count);
    mux m1(4'b0000,ones,tens,hundreds,count,mux_out);
    disp_on d1(count,display_on);
    bin_2_7seg b2(max_out,segment);
    
    
endmodule

