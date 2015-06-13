`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2014/09/11 22:01:06
// Design Name: 
// Module Name: seg_7
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


module seg_7(clk, dataout,datain);

    input clk;
    input[3:0] datain;
    output reg[6:0] dataout;

    always@(posedge clk )
        begin
        case(datain[3:0])
          4'b0000 :
              dataout <= 7'b1000000;
          4'b0001 :
              dataout <= 7'b1111001;
          4'b0010 :
              dataout <= 7'b0100100;
          4'b0011 :
              dataout <= 7'b0110000;
          4'b0100 :
              dataout <= 7'b0011001;
          4'b0101 :
              dataout <= 7'b0010010;
          4'b0110 :
              dataout <= 7'b0000010;
          4'b0111 :
              dataout <= 7'b1111000;
          4'b1000 :
              dataout <= 7'b0000000;
          4'b1001 :
              dataout <= 7'b0010000;
          4'b1010 :
              dataout <= 7'b0001000;
          4'b1011 :
              dataout <= 7'b0000011;
          4'b1100 :
              dataout <= 7'b1000110;
          4'b1101 :
              dataout <= 7'b0100001;
          4'b1110 :
              dataout <= 7'b0000110;
          4'b1111 :
              dataout <= 7'b0001110;
          default :
              dataout <= 7'b1000000;
        endcase
    end
endmodule