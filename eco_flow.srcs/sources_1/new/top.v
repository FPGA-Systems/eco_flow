`timescale 1ns / 1ps

//              | |                         |Project name: Top for counters  
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



module top(
    input iclk
    );
    
    wire sysclk;
    (* MARK_DEBUG="true" *)wire [3:0] ovalue_up;
    (* MARK_DEBUG="true" *)wire [3:0] ovalue_down;
    
   clk_wiz_0 iclk_wiz(
    // Clock out ports
    .clk_out1(sysclk),     // output clk_out1
   // Clock in ports
    .iclk_in(iclk));      // input iclk_in
    
    cnt_up inst_cnt_up(
        .iclk(sysclk),
        .ovalue(ovalue_up)
    );
    
    
    cnt_down inst_cnt_down(
        .iclk(sysclk),
        .ovalue(ovalue_down)
    );
    
endmodule
