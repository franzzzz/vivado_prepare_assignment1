`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2014/09/10 22:56:31
// Design Name: 
// Module Name: led_light
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


module led_light( clk, reset,yy,dataout,y0, y1, y2, y3, y4, y5, y6, y7,point,x0, x1, x2, x3, x4, x5,x6, x7,xx0,xx1,xx2,xx3);
    input clk,reset;
    input [15:0] yy;  
    output  y0, y1, y2, y3, y4, y5, y6, y7;
    output  x0, x1, x2, x3, x4, x5,x6, x7;
    output xx0,xx1,xx2,xx3;
    wire yy0,yy1,yy2,yy3;
    output[6:0] dataout;
    output point;
    
    
    wire clk_sys;
    wire[2:0] count; 
    clock_div U0(
        .clk(clk),
        .clk_sys(clk_sys)
    );
    ctc U1(
        .clk(clk_sys), 
        .reset(reset),
        .count(count)
        );
    swich U2(
        .clk(clk_sys), 
        .rst(reset),
        .s0(yy[0]),
        .s1(yy[1]),
        .s2(yy[2]),
        .s3(yy[3]),
        .s4(yy[4]),
        .s5(yy[5]),
        .s6(yy[6]),
        .s7(yy[7]),
        .s8(yy[8]),
        .s9(yy[9]),
        .s10(yy[10]),
        .s11(yy[11]),
        .s12(yy[12]),
        .s13(yy[13]),
        .s14(yy[14]),
        .s15(yy[15]), 
        .y0(yy0), 
        .y1(yy1),
        .y2(yy2), 
        .y3(yy3),
        .point(point)
        );
            swich_1 U3(
                .clk(clk_sys), 
                .rst(reset),
                .s0(yy[0]),
                .s1(yy[1]),
                .s2(yy[2]),
                .s3(yy[3]),
                .s4(yy[4]),
                .s5(yy[5]),
                .s6(yy[6]),
                .s7(yy[7]),
                .s8(yy[8]),
                .s9(yy[9]),
                .s10(yy[10]),
                .s11(yy[11]),
                .s12(yy[12]),
                .s13(yy[13]),
                .s14(yy[14]),
                .s15(yy[15]), 
                .y0(xx0), 
                .y1(xx1),
                .y2(xx2), 
                .y3(xx3)
                );
    seg_7 U4(
        .clk(clk_sys), 
        .dataout({dataout[6],dataout[5],dataout[4],dataout[3],dataout[2],dataout[1],dataout[0]}),
        .datain({yy3,yy2,yy1,yy0})
    );
    s_74ls138l U5(
        .E(reset),
        .A(count[2]),
        .B(count[1]),
        .C(count[0]),
        .Y0(x0),
        .Y1(x1),
        .Y2(x2),
        .Y3(x3),
        .Y4(x4),
        .Y5(x5),
        .Y6(x6),
        .Y7(x7)  
        );
    s_74ls138 U6(
       .E(yy[2]),
       .A(count[2]),
       .B(count[1]),
       .C(count[0]),
       .Y0(y0),
       .Y1(y1),
       .Y2(y2),
       .Y3(y3),
       .Y4(y4),
       .Y5(y5),
       .Y6(y6),
       .Y7(y7)
       );
          
endmodule
