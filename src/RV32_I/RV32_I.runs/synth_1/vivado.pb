
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:032default:default2
00:00:062default:default2
327.9492default:default2
98.4772default:defaultZ17-268h px� 
q
Command: %s
53*	vivadotcl2@
,synth_design -top top -part xc7a100tcsg324-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px� 
�
%s*synth2�
rStarting Synthesize : Time (s): cpu = 00:00:04 ; elapsed = 00:00:07 . Memory (MB): peak = 435.320 ; gain = 95.074
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
top2default:default2
 2default:default2g
QC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/top.v2default:default2
42default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
decode2default:default2
 2default:default2j
TC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/decode.v2default:default2
12default:default8@Z8-6157h px� 
T
%s
*synth2<
(	Parameter R_type bound to: 7'b0110011 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter I_type bound to: 7'b0010011 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter S_type bound to: 7'b0100011 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter Load bound to: 7'b0000011 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter SB bound to: 7'b1100011 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter U bound to: 7'b0110111 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter auipc bound to: 7'b0010111 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter jal bound to: 7'b1101111 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter jalr bound to: 7'b1100111 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2j
TC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/decode.v2default:default2
442default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
decode2default:default2
 2default:default2
12default:default2
12default:default2j
TC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/decode.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
register2default:default2
 2default:default2l
VC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/register.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
register2default:default2
 2default:default2
22default:default2
12default:default2l
VC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/register.v2default:default2
12default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322default:default2
led2default:default2
12default:default2
register2default:default2g
QC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/top.v2default:default2
602default:default8@Z8-689h px� 
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
reg_inst2default:default2
register2default:default2
112default:default2
102default:default2g
QC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/top.v2default:default2
502default:default8@Z8-350h px� 
�
synthesizing module '%s'%s4497*oasys2
pc2default:default2
 2default:default2f
PC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/pc.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pc2default:default2
 2default:default2
32default:default2
12default:default2f
PC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/pc.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Imem2default:default2
 2default:default2h
RC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/Imem.v2default:default2
242default:default8@Z8-6157h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
memory2default:default2h
RC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/Imem.v2default:default2
402default:default8@Z8-567h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Imem2default:default2
 2default:default2
42default:default2
12default:default2h
RC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/Imem.v2default:default2
242default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
alu2default:default2
 2default:default2g
QC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/alu.v2default:default2
232default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2g
QC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/alu.v2default:default2
312default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
alu2default:default2
 2default:default2
52default:default2
12default:default2g
QC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/alu.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
data_mem2default:default2
 2default:default2l
VC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/data_mem.v2default:default2
232default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2l
VC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/data_mem.v2default:default2
422default:default8@Z8-155h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
mask2default:default2l
VC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/data_mem.v2default:default2
382default:default8@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
d_memory2default:default2l
VC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/data_mem.v2default:default2
382default:default8@Z8-567h px� 
�
-case statement is not full and has no default155*oasys2l
VC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/data_mem.v2default:default2
912default:default8@Z8-155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2#
address_hld_reg2default:default2l
VC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/data_mem.v2default:default2
902default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
data_mem2default:default2
 2default:default2
62default:default2
12default:default2l
VC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/data_mem.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
branch2default:default2
 2default:default2j
TC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/branch.v2default:default2
232default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2j
TC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/branch.v2default:default2
312default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
branch2default:default2
 2default:default2
72default:default2
12default:default2j
TC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/branch.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2default:default2
 2default:default2
82default:default2
12default:default2g
QC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/top.v2default:default2
42default:default8@Z8-6155h px� 
~
!design %s has unconnected port %s3331*oasys2
branch2default:default2
	branch_en2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
Imem2default:default2
	pc_in[31]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
Imem2default:default2
	pc_in[30]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
Imem2default:default2
	pc_in[29]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
Imem2default:default2
	pc_in[28]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
Imem2default:default2
	pc_in[27]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
Imem2default:default2
	pc_in[26]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
Imem2default:default2
	pc_in[25]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
Imem2default:default2
	pc_in[24]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
Imem2default:default2
	pc_in[23]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
Imem2default:default2
	pc_in[22]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
Imem2default:default2
	pc_in[21]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
Imem2default:default2
	pc_in[20]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
Imem2default:default2
	pc_in[19]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
Imem2default:default2
	pc_in[18]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
Imem2default:default2
	pc_in[17]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
Imem2default:default2
	pc_in[16]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
Imem2default:default2
	pc_in[15]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
Imem2default:default2
	pc_in[14]2default:defaultZ8-3331h px� 
{
!design %s has unconnected port %s3331*oasys2
Imem2default:default2
pc_in[1]2default:defaultZ8-3331h px� 
{
!design %s has unconnected port %s3331*oasys2
Imem2default:default2
pc_in[0]2default:defaultZ8-3331h px� 
v
!design %s has unconnected port %s3331*oasys2
Imem2default:default2
clk2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
register2default:default2
rd_en2default:defaultZ8-3331h px� 
�
%s*synth2�
uFinished Synthesize : Time (s): cpu = 00:13:06 ; elapsed = 00:13:26 . Memory (MB): peak = 4130.828 ; gain = 3790.582
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:13:45 ; elapsed = 00:14:14 . Memory (MB): peak = 4130.828 ; gain = 3790.582
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4031*oasys2
22default:defaultZ8-5580h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:13:45 ; elapsed = 00:14:14 . Memory (MB): peak = 4130.828 ; gain = 3790.582
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
aluop12default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
mem_wrt_en02default:defaultZ8-5546h px� 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

mem_rd_en02default:defaultZ8-5546h px� 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

branch_en02default:defaultZ8-5546h px� 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
branch2default:defaultZ8-5546h px� 
�
TROM size for "%s" is below threshold of ROM address width. It will be mapped to LUTs4039*oasys2
imm_d2default:defaultZ8-5587h px� 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
imm_sb2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[31]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[30]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[29]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[28]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[27]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[26]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[25]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[24]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[23]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[22]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[21]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[20]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[19]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[18]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[17]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[16]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[15]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[14]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[13]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[12]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[11]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
register_reg[10]2default:defaultZ8-5546h px� 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
register_reg[9]2default:defaultZ8-5546h px� 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
register_reg[8]2default:defaultZ8-5546h px� 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
register_reg[7]2default:defaultZ8-5546h px� 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
register_reg[6]2default:defaultZ8-5546h px� 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
register_reg[4]2default:defaultZ8-5546h px� 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
register_reg[3]2default:defaultZ8-5546h px� 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
register_reg[2]2default:defaultZ8-5546h px� 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
register_reg[1]2default:defaultZ8-5546h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
led2default:default2
322default:default2
252default:defaultZ8-5545h px� 
�
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2g
QC:/Users/Fayz/OneDrive/Desktop/SV_PRACTICE/RV32_I/RV32_I.srcs/sources_1/new/alu.v2default:default2
312default:default8@Z8-5818h px� 