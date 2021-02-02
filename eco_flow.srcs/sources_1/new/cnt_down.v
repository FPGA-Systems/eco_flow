`timescale 1ns / 1ps
//              | |                         |Project name: Down counter  
//==============+=+==============           |Developer:
//              | |            ||           |   
//    |***|    |***|           ||           |Description:   
//====|***|    |***|           \\ |***|     |   
//====|***|    |***|             =|***|==== |   
//====|***|====|***|    |**\                |   
//====|***|    |***|====|***\     |***|     |   
//    |***|    |***|    |****|====|***|==== |    
//             |***|    |****|    FPGA      |   
//fpga-systems |***| ru |****| developers   |   
//             |***|    |****|  community   |   
//    |***|    |***|    |****|====|***|==== |   
//====|***|    |***|====|***/     |***|     |   
//====|***|====|***|    |**/                |   
//====|***|    |***|             =|***|==== |   
//====|***|    |***|           // |***|     |   
//    |***|    |***|           ||           |   
//              | |            ||           |web      - https://fpga-systems.ru  
//==============+=+==============           |telegram - https://t.me/fpgasystems   
//              | |                         |Youtube  - https://www.youtube.com/c/fpgasystems   



module cnt_down(
    input iclk,
    output [3:0] ovalue
    );
    
    reg [3:0] cnt;
    
    initial begin
        cnt <= 0;
    end
    
    always @(posedge iclk) begin
        cnt <= cnt - 1'b1;
    end
    
    assign ovalue = cnt;
endmodule
