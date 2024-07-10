`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////


module disp_on(input [1:0] a,output reg [3:0] b


    );
    always @(a)
    case (a)
    2'd0:b=4'b0000;
    2'd1:b=4'b0001;
    2'd2:b=4'b0010;
    2'd3:b=4'b0100;
    endcase
    
endmodule
