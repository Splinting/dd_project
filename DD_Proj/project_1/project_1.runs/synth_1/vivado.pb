
q
Command: %s
53*	vivadotcl2@
,synth_design -top top -part xc7a100tfgg484-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 413.402 ; gain = 99.656
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
top2default:default2i
SC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/top.v2default:default2
12default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2
	clock_div2default:default2o
YC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/clock_div.v2default:default2
232default:default8@Z8-638h px? 
[
%s
*synth2C
/	Parameter period bound to: 4 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter width bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	clock_div2default:default2
12default:default2
12default:default2o
YC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/clock_div.v2default:default2
232default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
vga2default:default2i
SC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/vga.v2default:default2
232default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2
vga_sync2default:default2n
XC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/vga_sync.v2default:default2
232default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
vga_sync2default:default2
22default:default2
12default:default2n
XC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/vga_sync.v2default:default2
232default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
image_02default:default2?
tC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.runs/synth_1/.Xil/Vivado-5356-A26/realtime/image_0_stub.v2default:default2
62default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
image_02default:default2
32default:default2
12default:default2?
tC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.runs/synth_1/.Xil/Vivado-5356-A26/realtime/image_0_stub.v2default:default2
62default:default8@Z8-256h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
addr_reg2default:default2
vga2default:default2i
SC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/vga.v2default:default2
432default:default8@Z8-5788h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
vga2default:default2
42default:default2
12default:default2i
SC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/vga.v2default:default2
232default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
gameControl2default:default2q
[C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/gameControl.v2default:default2
12default:default8@Z8-638h px? 
T
%s
*synth2<
(	Parameter CHOSE_BOARD bound to: 2'b00 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter GAMING bound to: 2'b01 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter GAME_INITIAL bound to: 2'b10 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter WINNED bound to: 2'b11 
2default:defaulth p
x
? 
?
synthesizing module '%s'638*oasys2

bottomFlag2default:default2p
ZC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/bottomFlag.v2default:default2
252default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2

bottomFlag2default:default2
52default:default2
12default:default2p
ZC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/bottomFlag.v2default:default2
252default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
fsm2default:default2i
SC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/fsm.v2default:default2
12default:default8@Z8-638h px? 
T
%s
*synth2<
(	Parameter CHOSE_BOARD bound to: 2'b00 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter GAMING bound to: 2'b01 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter GAME_INITIAL bound to: 2'b10 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter WINNED bound to: 2'b11 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
fsm2default:default2
62default:default2
12default:default2i
SC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/fsm.v2default:default2
12default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
play2default:default2j
TC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/play.v2default:default2
12default:default8@Z8-638h px? 
T
%s
*synth2<
(	Parameter CHOSE_BOARD bound to: 2'b00 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter GAMING bound to: 2'b01 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter GAME_INITIAL bound to: 2'b10 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter WINNED bound to: 2'b11 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter LEFT_UP bound to: 2'b00 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter LEFT_DOWN bound to: 2'b10 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter RIGHT_UP bound to: 2'b01 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter RIGHT_DOWN bound to: 2'b11 
2default:defaulth p
x
? 
?
synthesizing module '%s'638*oasys2
random2default:default2j
TC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/play.v2default:default2
2292default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
random2default:default2
72default:default2
12default:default2j
TC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/play.v2default:default2
2292default:default8@Z8-256h px? 
?
default block is never used226*oasys2j
TC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/play.v2default:default2
412default:default8@Z8-226h px? 
?
default block is never used226*oasys2j
TC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/play.v2default:default2
1002default:default8@Z8-226h px? 
?
default block is never used226*oasys2j
TC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/play.v2default:default2
2132default:default8@Z8-226h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
play2default:default2
82default:default2
12default:default2j
TC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/play.v2default:default2
12default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
flowLED2default:default2m
WC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/flowLED.v2default:default2
12default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2!
clock_div_bps2default:default2s
]C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/clock_div_bps.v2default:default2
12default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2!
clock_div_bps2default:default2
92default:default2
12default:default2s
]C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/clock_div_bps.v2default:default2
12default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
flowLED2default:default2
102default:default2
12default:default2m
WC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/flowLED.v2default:default2
12default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2!
seg_functions2default:default2s
]C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/seg_functions.v2default:default2
232default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2-
clock_div__parameterized02default:default2o
YC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/clock_div.v2default:default2
232default:default8@Z8-638h px? 
^
%s
*synth2F
2	Parameter period bound to: 1000 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter width bound to: 10 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2-
clock_div__parameterized02default:default2
102default:default2
12default:default2o
YC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/clock_div.v2default:default2
232default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2-
clock_div__parameterized12default:default2o
YC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/clock_div.v2default:default2
232default:default8@Z8-638h px? 
]
%s
*synth2E
1	Parameter period bound to: 100 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter width bound to: 7 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2-
clock_div__parameterized12default:default2
102default:default2
12default:default2o
YC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/clock_div.v2default:default2
232default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
seg_tube2default:default2n
XC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/seg_tube.v2default:default2
232default:default8@Z8-638h px? 
?
default block is never used226*oasys2n
XC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/seg_tube.v2default:default2
642default:default8@Z8-226h px? 
?
default block is never used226*oasys2n
XC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/seg_tube.v2default:default2
842default:default8@Z8-226h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
seg_out_reg2default:default2
seg_tube2default:default2n
XC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/seg_tube.v2default:default2
652default:default8@Z8-5788h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
seg_tube2default:default2
112default:default2
12default:default2n
XC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/seg_tube.v2default:default2
232default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2!
seg_functions2default:default2
122default:default2
12default:default2s
]C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/seg_functions.v2default:default2
232default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
gameControl2default:default2
132default:default2
12default:default2q
[C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/gameControl.v2default:default2
12default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
top2default:default2
142default:default2
12default:default2i
SC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/top.v2default:default2
12default:default8@Z8-256h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 466.504 ; gain = 152.758
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 466.504 ; gain = 152.758
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
Loading part %s157*device2$
xc7a100tfgg484-12default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
xC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.runs/synth_1/.Xil/Vivado-5356-A26/dcp1/image_0_in_context.xdc2default:default2
vga/im_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
xC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.runs/synth_1/.Xil/Vivado-5356-A26/dcp1/image_0_in_context.xdc2default:default2
vga/im_0	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default8Z20-179h px? 
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'DIG[7]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
12default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'DIG[6]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
52default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'DIG[5]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
92default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'DIG[4]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
132default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'DIG[3]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
172default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'DIG[2]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
212default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'DIG[1]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
252default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'DIG[0]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
292default:default8@Z17-69h px?
?
Command failed: %s
69*common2D
0Cannot change direction of connected port 'Y[7]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
332default:default8@Z17-69h px?
?
Command failed: %s
69*common2D
0Cannot change direction of connected port 'Y[6]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
372default:default8@Z17-69h px?
?
Command failed: %s
69*common2D
0Cannot change direction of connected port 'Y[5]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
412default:default8@Z17-69h px?
?
Command failed: %s
69*common2D
0Cannot change direction of connected port 'Y[4]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
452default:default8@Z17-69h px?
?
Command failed: %s
69*common2D
0Cannot change direction of connected port 'Y[3]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
492default:default8@Z17-69h px?
?
Command failed: %s
69*common2D
0Cannot change direction of connected port 'Y[2]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
532default:default8@Z17-69h px?
?
Command failed: %s
69*common2D
0Cannot change direction of connected port 'Y[1]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
572default:default8@Z17-69h px?
?
Command failed: %s
69*common2D
0Cannot change direction of connected port 'Y[0]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
612default:default8@Z17-69h px?
?
Command failed: %s
69*common2G
3Cannot change direction of connected port 'blue[3]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
652default:default8@Z17-69h px?
?
Command failed: %s
69*common2G
3Cannot change direction of connected port 'blue[2]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
692default:default8@Z17-69h px?
?
Command failed: %s
69*common2G
3Cannot change direction of connected port 'blue[1]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
732default:default8@Z17-69h px?
?
Command failed: %s
69*common2G
3Cannot change direction of connected port 'blue[0]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
772default:default8@Z17-69h px?
?
Command failed: %s
69*common2I
5Cannot change direction of connected port 'bottom[4]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
812default:default8@Z17-69h px?
?
Command failed: %s
69*common2I
5Cannot change direction of connected port 'bottom[3]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
832default:default8@Z17-69h px?
?
Command failed: %s
69*common2I
5Cannot change direction of connected port 'bottom[2]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
852default:default8@Z17-69h px?
?
Command failed: %s
69*common2I
5Cannot change direction of connected port 'bottom[1]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
872default:default8@Z17-69h px?
?
Command failed: %s
69*common2I
5Cannot change direction of connected port 'bottom[0]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
892default:default8@Z17-69h px?
?
Command failed: %s
69*common2K
7Cannot change direction of connected port 'flow_led[5]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
912default:default8@Z17-69h px?
?
Command failed: %s
69*common2K
7Cannot change direction of connected port 'flow_led[4]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
952default:default8@Z17-69h px?
?
Command failed: %s
69*common2K
7Cannot change direction of connected port 'flow_led[3]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
992default:default8@Z17-69h px?
?
Command failed: %s
69*common2K
7Cannot change direction of connected port 'flow_led[2]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1032default:default8@Z17-69h px?
?
Command failed: %s
69*common2K
7Cannot change direction of connected port 'flow_led[1]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1072default:default8@Z17-69h px?
?
Command failed: %s
69*common2K
7Cannot change direction of connected port 'flow_led[0]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1112default:default8@Z17-69h px?
?
Command failed: %s
69*common2H
4Cannot change direction of connected port 'green[3]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1152default:default8@Z17-69h px?
?
Command failed: %s
69*common2H
4Cannot change direction of connected port 'green[2]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1192default:default8@Z17-69h px?
?
Command failed: %s
69*common2H
4Cannot change direction of connected port 'green[1]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1232default:default8@Z17-69h px?
?
Command failed: %s
69*common2H
4Cannot change direction of connected port 'green[0]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1272default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'key[5]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1312default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'key[4]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1332default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'key[3]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1352default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'key[2]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1372default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'key[1]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1392default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'key[0]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1412default:default8@Z17-69h px?
?
Command failed: %s
69*common2J
6Cannot change direction of connected port 'key_led[5]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1432default:default8@Z17-69h px?
?
Command failed: %s
69*common2J
6Cannot change direction of connected port 'key_led[4]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1472default:default8@Z17-69h px?
?
Command failed: %s
69*common2J
6Cannot change direction of connected port 'key_led[3]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1512default:default8@Z17-69h px?
?
Command failed: %s
69*common2J
6Cannot change direction of connected port 'key_led[2]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1552default:default8@Z17-69h px?
?
Command failed: %s
69*common2J
6Cannot change direction of connected port 'key_led[1]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1592default:default8@Z17-69h px?
?
Command failed: %s
69*common2J
6Cannot change direction of connected port 'key_led[0]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1632default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'red[3]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1672default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'red[2]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1712default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'red[1]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1752default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'red[0]'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1792default:default8@Z17-69h px?
?
Command failed: %s
69*common2E
1Cannot change direction of connected port 'hsync'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1832default:default8@Z17-69h px?
?
Command failed: %s
69*common2I
5Cannot change direction of connected port 'possi_led'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1872default:default8@Z17-69h px?
?
Command failed: %s
69*common2J
6Cannot change direction of connected port 'random_key'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1912default:default8@Z17-69h px?
?
Command failed: %s
69*common2F
2Cannot change direction of connected port 'rd_led'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1932default:default8@Z17-69h px?
?
Command failed: %s
69*common2C
/Cannot change direction of connected port 'rst'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1972default:default8@Z17-69h px?
?
Command failed: %s
69*common2G
3Cannot change direction of connected port 'sys_clk'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
1992default:default8@Z17-69h px?
?
Command failed: %s
69*common2E
1Cannot change direction of connected port 'vsync'2default:default2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2
2012default:default8@Z17-69h px?
?
Finished Parsing XDC File [%s]
178*designutils2P
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2N
:C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-236h px? 
?
Parsing XDC File [%s]
179*designutils2l
VC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2l
VC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
813.6992default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 813.699 ; gain = 499.953
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tfgg484-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 813.699 ; gain = 499.953
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 813.699 ; gain = 499.953
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
u
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
v_cnt2default:defaultZ8-5546h px? 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
sample22default:defaultZ8-5546h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	count_reg2default:default2p
ZC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/bottomFlag.v2default:default2
452default:default8@Z8-6014h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
step_number2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
regi_reg2default:default2j
TC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/play.v2default:default2
2382default:default8@Z8-6014h px? 
|
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2 
possible_led2default:defaultZ8-5546h px? 
x
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
win_flag2default:defaultZ8-5546h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
out_game2default:default2
22default:default2
52default:defaultZ8-5544h px? 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
clk_bps2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

cnt_second2default:defaultZ8-5546h px? 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
clk_out2default:defaultZ8-5546h px? 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
clk_out2default:defaultZ8-5546h px? 
s
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
min2default:defaultZ8-5546h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:15 . Memory (MB): peak = 813.699 ; gain = 499.953
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     18 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     18 Bit       Adders := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     14 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     13 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               18 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               14 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 30    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     18 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     18 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     14 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input     12 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     12 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 21    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  25 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  26 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  13 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
>
%s
*synth2&
Module clock_div 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
Module vga_sync 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
8
%s
*synth2 
Module vga 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     18 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     18 Bit       Adders := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     13 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               18 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     18 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     18 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 3     
2default:defaulth p
x
? 
?
%s
*synth2'
Module bottomFlag 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
Module fsm 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               14 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
;
%s
*synth2#
Module random 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  25 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
Module play 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input     12 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     12 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  26 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  13 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
B
%s
*synth2*
Module clock_div_bps 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     14 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               14 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     14 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
<
%s
*synth2$
Module flowLED 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 2     
2default:defaulth p
x
? 
N
%s
*synth26
"Module clock_div__parameterized0 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
N
%s
*synth26
"Module clock_div__parameterized1 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
Module seg_tube 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
B
%s
*synth2*
Module seg_functions 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
clk_out2default:defaultZ8-5546h px? 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
clk_out2default:defaultZ8-5546h px? 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
clk_out2default:defaultZ8-5546h px? 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
cda/clk_out2default:defaultZ8-5546h px? 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

cd/clk_out2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
vga/sync/v_cnt2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
gc/stF/sample22default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
gc/actF0/sample22default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
gc/actF1/sample22default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
gc/actF2/sample22default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
gc/actF3/sample22default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2&
gc/pC/possible_led2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
gc/pC/win_flag2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2-
gc/fled/clkbps/cnt_second2default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2*
gc/fled/clkbps/clk_bps2default:defaultZ8-5546h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2$
gc/stF/count_reg2default:default2p
ZC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/bottomFlag.v2default:default2
452default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
gc/actF0/count_reg2default:default2p
ZC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/bottomFlag.v2default:default2
452default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
gc/actF1/count_reg2default:default2p
ZC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/bottomFlag.v2default:default2
452default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
gc/actF2/count_reg2default:default2p
ZC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/bottomFlag.v2default:default2
452default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
gc/actF3/count_reg2default:default2p
ZC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/bottomFlag.v2default:default2
452default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2%
gc/pC/rd/regi_reg2default:default2j
TC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/play.v2default:default2
2382default:default8@Z8-6014h px? 
r
%s
*synth2Z
FDSP Report: Generating DSP vga/addr1, operation Mode is: A*(B:0x1e0).
2default:defaulth p
x
? 
k
%s
*synth2S
?DSP Report: operator vga/addr1 is absorbed into DSP vga/addr1.
2default:defaulth p
x
? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2.
gc/fsm/step_number_reg[13]2default:default2
FDCE2default:default2.
gc/fsm/step_number_reg[12]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2.
gc/fsm/step_number_reg[12]2default:default2
FDCE2default:default2.
gc/fsm/step_number_reg[11]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2.
gc/fsm/step_number_reg[11]2default:default2
FDCE2default:default2.
gc/fsm/step_number_reg[10]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2.
gc/fsm/step_number_reg[10]2default:default2
FDCE2default:default2-
gc/fsm/step_number_reg[9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2-
gc/fsm/step_number_reg[9]2default:default2
FDCE2default:default2-
gc/fsm/step_number_reg[8]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2/
\gc/fsm/step_number_reg[8] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
gc/nolabel_line40/nums_reg[15]2default:default2
FDC2default:default21
gc/nolabel_line40/nums_reg[7]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default23
\gc/nolabel_line40/nums_reg[7] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2-
gc/pC/rd/rand_out_reg[11]2default:default2
FDCE2default:default2,
gc/pC/rd/rand_out_reg[8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2,
gc/pC/rd/rand_out_reg[5]2default:default2
FDCE2default:default2,
gc/pC/rd/rand_out_reg[8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2,
gc/pC/rd/rand_out_reg[8]2default:default2
FDCE2default:default2,
gc/pC/rd/rand_out_reg[2]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2.
\gc/pC/rd/rand_out_reg[2] 2default:defaultZ8-3333h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
gc/nolabel_line40/nums_reg[31]2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
gc/nolabel_line40/nums_reg[30]2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
gc/nolabel_line40/nums_reg[29]2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
gc/nolabel_line40/nums_reg[28]2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
gc/nolabel_line40/nums_reg[7]2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2,
gc/pC/rd/rand_out_reg[2]2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
gc/fsm/step_number_reg[8]2default:default2
top2default:defaultZ8-3332h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2=
)\gc/nolabel_line40/st/seg_out_reg[0]_LDC 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2=
)\gc/nolabel_line40/st/seg_out_reg[1]_LDC 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2=
)\gc/nolabel_line40/st/seg_out_reg[2]_LDC 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2=
)\gc/nolabel_line40/st/seg_out_reg[3]_LDC 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2=
)\gc/nolabel_line40/st/seg_out_reg[5]_LDC 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2=
)\gc/nolabel_line40/st/seg_out_reg[6]_LDC 2default:defaultZ8-3333h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2;
'gc/nolabel_line40/st/seg_out_reg[6]_LDC2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%gc/nolabel_line40/st/seg_out_reg[6]_C2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2;
'gc/nolabel_line40/st/seg_out_reg[5]_LDC2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%gc/nolabel_line40/st/seg_out_reg[5]_C2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2;
'gc/nolabel_line40/st/seg_out_reg[3]_LDC2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%gc/nolabel_line40/st/seg_out_reg[3]_C2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2;
'gc/nolabel_line40/st/seg_out_reg[2]_LDC2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%gc/nolabel_line40/st/seg_out_reg[2]_C2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2;
'gc/nolabel_line40/st/seg_out_reg[1]_LDC2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%gc/nolabel_line40/st/seg_out_reg[1]_C2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2;
'gc/nolabel_line40/st/seg_out_reg[0]_LDC2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys29
%gc/nolabel_line40/st/seg_out_reg[0]_C2default:default2
top2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 813.699 ; gain = 499.953
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
2
%s*synth2

ROM:
2default:defaulth px? 
p
%s*synth2X
D+------------+-------------------+---------------+----------------+
2default:defaulth px? 
q
%s*synth2Y
E|Module Name | RTL Object        | Depth x Width | Implemented As | 
2default:defaulth px? 
p
%s*synth2X
D+------------+-------------------+---------------+----------------+
2default:defaulth px? 
q
%s*synth2Y
E|random      | rand_out          | 32x12         | LUT            | 
2default:defaulth px? 
q
%s*synth2Y
E|play        | out               | 32x12         | LUT            | 
2default:defaulth px? 
q
%s*synth2Y
E|top         | gc/pC/rd/rand_out | 32x12         | LUT            | 
2default:defaulth px? 
q
%s*synth2Y
E|top         | gc/pC/out         | 32x12         | LUT            | 
2default:defaulth px? 
q
%s*synth2Y
E+------------+-------------------+---------------+----------------+

2default:defaulth px? 
_
%s*synth2G
3
DSP: Preliminary Mapping  Report (see note below)
2default:defaulth px? 
?
%s*synth2?
|+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
}|Module Name | DSP Mapping | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
|+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
}|vga         | A*(B:0x1e0) | 18     | 9      | -      | -      | 27     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
}+------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:27 ; elapsed = 00:00:29 . Memory (MB): peak = 873.492 ; gain = 559.746
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:27 ; elapsed = 00:00:29 . Memory (MB): peak = 874.582 ; gain = 560.836
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
gc/pC/out_reg[11]2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
gc/pC/out_reg[8]2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
gc/pC/out_reg[5]2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
gc/pC/out_reg[2]2default:default2
top2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 921.184 ; gain = 607.438
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 921.184 ; gain = 607.438
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 921.184 ; gain = 607.438
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 921.184 ; gain = 607.438
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 921.184 ; gain = 607.438
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 921.184 ; gain = 607.438
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 921.184 ; gain = 607.438
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|1     |image_0       |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s*synth2-
|      |Cell    |Count |
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s*synth2-
|1     |image_0 |     1|
2default:defaulth px? 
E
%s*synth2-
|2     |BUFG    |     2|
2default:defaulth px? 
E
%s*synth2-
|3     |CARRY4  |   109|
2default:defaulth px? 
E
%s*synth2-
|4     |DSP48E1 |     1|
2default:defaulth px? 
E
%s*synth2-
|5     |LUT1    |    50|
2default:defaulth px? 
E
%s*synth2-
|6     |LUT2    |   244|
2default:defaulth px? 
E
%s*synth2-
|7     |LUT3    |   175|
2default:defaulth px? 
E
%s*synth2-
|8     |LUT4    |   129|
2default:defaulth px? 
E
%s*synth2-
|9     |LUT5    |   115|
2default:defaulth px? 
E
%s*synth2-
|10    |LUT6    |   210|
2default:defaulth px? 
E
%s*synth2-
|11    |MUXF7   |     3|
2default:defaulth px? 
E
%s*synth2-
|12    |FDCE    |   326|
2default:defaulth px? 
E
%s*synth2-
|13    |FDPE    |    22|
2default:defaulth px? 
E
%s*synth2-
|14    |FDRE    |    28|
2default:defaulth px? 
E
%s*synth2-
|15    |IBUF    |    14|
2default:defaulth px? 
E
%s*synth2-
|16    |OBUF    |    44|
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
m
%s
*synth2U
A+------+-------------------+----------------------------+------+
2default:defaulth p
x
? 
m
%s
*synth2U
A|      |Instance           |Module                      |Cells |
2default:defaulth p
x
? 
m
%s
*synth2U
A+------+-------------------+----------------------------+------+
2default:defaulth p
x
? 
m
%s
*synth2U
A|1     |top                |                            |  1484|
2default:defaulth p
x
? 
m
%s
*synth2U
A|2     |  clk_d            |clock_div                   |     4|
2default:defaulth p
x
? 
m
%s
*synth2U
A|3     |  gc               |gameControl                 |   899|
2default:defaulth p
x
? 
m
%s
*synth2U
A|4     |    actF0          |bottomFlag                  |    61|
2default:defaulth p
x
? 
m
%s
*synth2U
A|5     |    actF1          |bottomFlag_0                |    61|
2default:defaulth p
x
? 
m
%s
*synth2U
A|6     |    actF2          |bottomFlag_1                |    60|
2default:defaulth p
x
? 
m
%s
*synth2U
A|7     |    actF3          |bottomFlag_2                |    63|
2default:defaulth p
x
? 
m
%s
*synth2U
A|8     |    fled           |flowLED                     |    84|
2default:defaulth p
x
? 
m
%s
*synth2U
A|9     |      clkbps       |clock_div_bps               |    71|
2default:defaulth p
x
? 
m
%s
*synth2U
A|10    |    fsm            |fsm                         |    81|
2default:defaulth p
x
? 
m
%s
*synth2U
A|11    |    nolabel_line40 |seg_functions               |   271|
2default:defaulth p
x
? 
m
%s
*synth2U
A|12    |      cda          |clock_div__parameterized0   |    29|
2default:defaulth p
x
? 
m
%s
*synth2U
A|13    |      cdb          |clock_div__parameterized0_4 |    29|
2default:defaulth p
x
? 
m
%s
*synth2U
A|14    |      cd           |clock_div__parameterized1   |    18|
2default:defaulth p
x
? 
m
%s
*synth2U
A|15    |      st           |seg_tube                    |    92|
2default:defaulth p
x
? 
m
%s
*synth2U
A|16    |        cd         |clock_div__parameterized1_5 |    19|
2default:defaulth p
x
? 
m
%s
*synth2U
A|17    |        cda        |clock_div__parameterized1_6 |    19|
2default:defaulth p
x
? 
m
%s
*synth2U
A|18    |    pC             |play                        |   149|
2default:defaulth p
x
? 
m
%s
*synth2U
A|19    |      rd           |random                      |    28|
2default:defaulth p
x
? 
m
%s
*synth2U
A|20    |    stF            |bottomFlag_3                |    69|
2default:defaulth p
x
? 
m
%s
*synth2U
A|21    |  vga              |vga                         |   521|
2default:defaulth p
x
? 
m
%s
*synth2U
A|22    |    sync           |vga_sync                    |   437|
2default:defaulth p
x
? 
m
%s
*synth2U
A+------+-------------------+----------------------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 921.184 ; gain = 607.438
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 31 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:20 ; elapsed = 00:00:25 . Memory (MB): peak = 921.184 ; gain = 260.242
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:29 ; elapsed = 00:00:30 . Memory (MB): peak = 921.184 ; gain = 607.438
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1272default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
932default:default2
332default:default2
582default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:302default:default2
00:00:332default:default2
921.1842default:default2
618.9062default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2c
OC:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.runs/synth_1/top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px? 
?
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.042 . Memory (MB): peak = 921.184 ; gain = 0.000
*commonh px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Dec 22 20:35:05 20212default:defaultZ17-206h px? 


End Record