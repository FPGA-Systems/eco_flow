# File saved with Nlview 7.0r6  2020-01-29 bk=1.5227 VDI=41 GEI=36 GUI=JA:10.0 non-TLS-threadsafe
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new mux2in1 work:mux2in1:NOFILE -nosplit
load symbol nand2 work:nand2:NOFILE HIERBOX pin x1 input.left pin x2 input.left pin y output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol nand2_0 work:nand2_0:NOFILE HIERBOX pin x2 input.left pin y input.left pin y_INST_0 output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol nand2_1 work:nand2_1:NOFILE HIERBOX pin x1 input.left pin x2 input.left pin y output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol not1 work:not1:NOFILE HIERBOX pin x1 input.left pin y output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load port sel input -pg 1 -lvl 0 -x 0 -y 80
load port x1 input -pg 1 -lvl 0 -x 0 -y 40
load port x2 input -pg 1 -lvl 0 -x 0 -y 240
load port y output -pg 1 -lvl 6 -x 870 -y 60
load inst nand2_bot nand2 work:nand2:NOFILE -autohide -attr @cell(#000000) nand2 -pg 1 -lvl 3 -x 400 -y 160
load inst nand2_cen nand2_0 work:nand2_0:NOFILE -autohide -attr @cell(#000000) nand2_0 -pg 1 -lvl 4 -x 570 -y 50
load inst nand2_top nand2_1 work:nand2_1:NOFILE -autohide -attr @cell(#000000) nand2_1 -pg 1 -lvl 3 -x 400 -y 50
load inst not_bot not1 work:not1:NOFILE -autohide -attr @cell(#000000) not1 -pg 1 -lvl 2 -x 220 -y 160
load inst sel_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 40 -y 80
load inst x1_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 220 -y 40
load inst x2_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 220 -y 240
load inst y_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 5 -x 740 -y 60
load net nand2_bot_out -pin nand2_bot y -pin nand2_cen x2
netloc nand2_bot_out 1 3 1 520 60n
load net nand2_top_out -pin nand2_cen y -pin nand2_top y
netloc nand2_top_out 1 3 1 500 60n
load net not1_bot_out -pin nand2_bot x1 -pin not_bot y
netloc not1_bot_out 1 2 1 NJ 170
load net sel -port sel -pin sel_IBUF_inst I
netloc sel 1 0 1 NJ 80
load net sel_IBUF -pin nand2_top x2 -pin not_bot x1 -pin sel_IBUF_inst O
netloc sel_IBUF 1 1 2 170 80 NJ
load net x1 -port x1 -pin x1_IBUF_inst I
netloc x1 1 0 2 NJ 40 NJ
load net x1_IBUF -pin nand2_top x1 -pin x1_IBUF_inst O
netloc x1_IBUF 1 2 1 350 40n
load net x2 -port x2 -pin x2_IBUF_inst I
netloc x2 1 0 2 NJ 240 NJ
load net x2_IBUF -pin nand2_bot x2 -pin x2_IBUF_inst O
netloc x2_IBUF 1 2 1 350 190n
load net y -port y -pin y_OBUF_inst O
netloc y 1 5 1 NJ 60
load net y_OBUF -pin nand2_cen y_INST_0 -pin y_OBUF_inst I
netloc y_OBUF 1 4 1 NJ 60
levelinfo -pg 1 0 40 220 400 570 740 870
pagesize -pg 1 -db -bbox -sgen -70 0 930 280
show
fullfit
#
# initialize ictrl to current module mux2in1 work:mux2in1:NOFILE
ictrl init topinfo |
