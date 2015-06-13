`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2014/09/11 13:36:55
// Design Name: 
// Module Name: swich
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


module swich(clk, rst, s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15, y0, y1, y2, y3,point);
    input   clk, rst; 
    input   s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15;
    output reg y0, y1, y2, y3;
    output reg point;
        
    always@(posedge clk or negedge rst)
        begin
            if(!rst || !s2)
                begin
                    {y3,y2,y1,y0}<=4'b0000;
                 end
            else
                begin
                    point<=1'b0;
                    case({s1,s0})
                        2'b00:{y3,y2,y1,y0}<=4'b0000;
                        2'b01:{y3,y2,y1,y0}<={s7,s6,s5,s4};
                        2'b10:{y3,y2,y1,y0}<={s11,s10,s9,s8};
                        2'b11:{y3,y2,y1,y0}<={s15,s14,s13,s12};
                    endcase
                end
        end
endmodule
