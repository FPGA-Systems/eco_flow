// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jan 30 09:46:13 2021
// Host        : fae-server running 64-bit major release  (build 9200)
// Command     : write_verilog inv.v
// Design      : led
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "6e8b67fb" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module led
   (ibtn,
    oled);
  input ibtn;
  output oled;

  wire ibtn;
  wire net1;
  wire net2;
  wire oled;

  IBUF ibtn_IBUF_inst
       (.I(ibtn),
        .O(net1));
  LUT1 #(
    .INIT(2'h1)) 
    inv
       (.I0(net1),
        .O(net2));
  OBUF oled_OBUF_inst
       (.I(net2),
        .O(oled));
endmodule
