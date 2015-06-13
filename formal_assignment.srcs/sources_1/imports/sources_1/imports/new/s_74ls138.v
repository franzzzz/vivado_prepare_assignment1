`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2014/09/10 22:44:27
// Design Name: 
// Module Name: s_74ls138
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

module s_74ls138( E,A,B,C,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7 );
    input  E;            //使能输入端（74LS138有三个使能输入）
    input  A,B,C;                  //输入
    output reg Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;                   //输出
    
    always@ ( A or B or C or E )
        begin 
            if( ! E )
                {Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7} <= 8'b1111_1111;
            else 
                begin
                    case({A,B,C})
                        3'b000:{Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7} <= 8'b1111_1110;
                        3'b001:{Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7} <= 8'b1111_1101;
                        3'b010:{Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7} <= 8'b1111_1011;
                        3'b011:{Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7} <= 8'b1111_0111;
                        3'b100:{Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7} <= 8'b1110_1111;
                        3'b101:{Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7} <= 8'b1101_1111;
                        3'b110:{Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7} <= 8'b1011_1111;
                        3'b111:{Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7} <= 8'b0111_1111;     
                    endcase
                end
        end
     
   
endmodule
