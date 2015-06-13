`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2014/09/10 22:28:40
// Design Name: 
// Module Name: clock_div
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


module clock_div( clk , clk_sys );
    input clk;//100MHz
    output clk_sys;//1Hz
    reg clk_sys=0;
    reg [25:0] counter=0;
    //上升沿来的时候执行
    always@ ( posedge clk )
    begin
          if(counter >= 50000000 )    
            begin
                clk_sys <= ~clk_sys;
                counter <= 0;
             end
          else
            begin
                counter <= counter + 1;
            end		 
    end
    
endmodule
