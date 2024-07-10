`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////


module mux(input [3:0]a,input [3:0]b,input [3:0]c,input [3:0]d,input [1:0]ss,output reg[3:0]y

    );
    always @ (a or b or c or d or ss)
    case (ss)
    2'd0:y=a;
    2'd1:y=b;
    2'd2:y=c;
    2'd3:y=d;
    endcase 
    
    
endmodule
