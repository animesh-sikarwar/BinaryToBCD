`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////


module slow_clock(input clk,output reg out_clk

    );
    
    reg [20:0]counter;
    initial 
    begin
    counter=0;
    out_clk=0;
    end
    
    always @(posedge clk)
    begin
    counter=counter+1;
    if(counter==50000)begin
    counter=0;
    out_clk=~out_clk;
   end 
   end
   
    
    
endmodule
