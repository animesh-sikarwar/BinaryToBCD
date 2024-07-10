`timescale 1ns / 1ps
    
  module bin2bcd(input [7:0] a, output reg [11:0] b

    );
reg [3:0] b1, b2, b3;
reg [7:0] a1;
integer i;



    always @(*)
        begin
         a1 = a;
        b1 = 4'b0;
        b2 = 4'b0;
        b3 = 4'b0;
    for (i = 0; i < 8; i = i + 1)
        begin
    if (b1 >= 4'b0101)
        b1 = b1 + 4'b0011;

if (b2 >= 4'b0101)
    b2 = b2 + 4'b0011;

if (b3 >= 4'b0101)
    b3 = b3 + 4'b0011;

b3 = b3 << 1;
b3[0] = b2[3];

b2 = b2 << 1;
b2[0] =  b1[3];

b1 = b1 << 1;
b1[0] = a1[7];

a1 = a1 << 1;

end
    b = {b3,b2,b1};
    

end

    endmodule
