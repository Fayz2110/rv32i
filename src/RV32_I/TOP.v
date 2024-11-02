// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Oct 28 13:17:47 2024
// Host        : DESKTOP-P7HC59E running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim TOP.v
// Design      : AXI_4_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* XLNX_LINE_COL = "461568" *) (* address_width = "32" *) (* data_width = "32" *) 
module AXI4_master
   (clk,
    rst,
    address,
    rd_en,
    wrt_en,
    data_in,
    m_ARADDR,
    m_ARVALID,
    m_ARREADY,
    m_RDATA,
    m_RVALID,
    m_RREADY,
    m_AWADDR,
    m_AWVALID,
    m_AWREADY,
    m_WDATA,
    m_WVALID,
    m_WREADY,
    m_BRESP,
    m_BVALID,
    m_BREADY);
  input clk;
  input rst;
  input [31:0]address;
  input rd_en;
  input wrt_en;
  input [31:0]data_in;
  output [31:0]m_ARADDR;
  output m_ARVALID;
  input m_ARREADY;
  input [31:0]m_RDATA;
  input m_RVALID;
  output m_RREADY;
  output [31:0]m_AWADDR;
  output m_AWVALID;
  input m_AWREADY;
  output [31:0]m_WDATA;
  output m_WVALID;
  input m_WREADY;
  input [1:0]m_BRESP;
  input m_BVALID;
  output m_BREADY;

  wire [31:0]address;
  wire clk;
  wire [2:0]current_state;
  wire [31:0]data_in;
  wire [31:0]m_ARADDR;
  wire m_ARADDR_i__0_n_0;
  wire m_ARADDR_i_n_0;
  wire m_ARREADY;
  wire m_ARVALID;
  wire m_ARVALID_i__0_n_0;
  wire m_ARVALID_i__1_n_0;
  wire m_ARVALID_i_n_0;
  wire [31:0]m_AWADDR;
  wire m_AWADDR_i_n_0;
  wire m_AWREADY;
  wire m_AWVALID;
  wire m_AWVALID_i__0_n_0;
  wire m_AWVALID_i_n_0;
  wire m_BREADY;
  wire m_BREADY_i__0_n_0;
  wire m_BREADY_i_n_0;
  wire m_RREADY;
  wire m_RREADY_i__0_n_0;
  wire m_RREADY_i_n_0;
  wire [31:0]m_WDATA;
  wire m_WDATA_i_n_0;
  wire m_WREADY;
  wire m_WVALID;
  wire m_WVALID_i__0_n_0;
  wire m_WVALID_i_n_0;
  wire [2:0]next_state;
  wire next_state0;
  wire next_state0_out;
  wire next_state_i__0_n_0;
  wire next_state_i__0_n_1;
  wire next_state_i__0_n_2;
  wire next_state_i__2_n_0;
  wire next_state_i__3_n_0;
  wire next_state_i_n_0;
  wire next_state_i_n_1;
  wire next_state_i_n_2;
  wire [2:0]next_state_reg__0;
  wire rd_en;
  wire rst;
  wire wrt_en;

  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "3328" *) 
  (* map_to_module = "2" *) 
  RTL_REG__BREG_1 \current_state_reg[0] 
       (.C(clk),
        .CE(rst),
        .D(next_state_reg__0[0]),
        .Q(current_state[0]));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "3328" *) 
  (* map_to_module = "2" *) 
  RTL_REG__BREG_1 \current_state_reg[1] 
       (.C(clk),
        .CE(rst),
        .D(next_state_reg__0[1]),
        .Q(current_state[1]));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "3328" *) 
  (* map_to_module = "2" *) 
  RTL_REG__BREG_1 \current_state_reg[2] 
       (.C(clk),
        .CE(rst),
        .D(next_state_reg__0[2]),
        .Q(current_state[2]));
  (* SEL_VAL = "I0:S=3'b000,I1:S=3'b001,I2:S=3'b010,I3:S=3'b011,I4:S=3'b100,I5:S=default" *) 
  (* XLNX_LINE_COL = "1024" *) 
  (* map_to_module = "26" *) 
  RTL_MUX5 m_ARADDR_i
       (.I0(1'b0),
        .I1(m_ARREADY),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(m_ARADDR_i_n_0),
        .S(current_state));
  (* SEL_VAL = "I0:S=1'b0,I1:S=default" *) 
  (* XLNX_LINE_COL = "512" *) 
  (* map_to_module = "12" *) 
  RTL_MUX6 m_ARADDR_i__0
       (.I0(1'b1),
        .I1(1'b0),
        .O(m_ARADDR_i__0_n_0),
        .S(rst));
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "7" *) 
  RTL_LATCH3 m_ARADDR_reg
       (.D(address),
        .G(m_ARADDR_i_n_0),
        .Q(m_ARADDR));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[0] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[0]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[10] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[10]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[11] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[11]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[12] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[12]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[13] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[13]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[14] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[14]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[15] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[15]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[16] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[16]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[17] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[17]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[18] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[18]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[19] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[19]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[1] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[1]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[20] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[20]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[21] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[21]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[22] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[22]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[23] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[23]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[24] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[24]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[25] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[25]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[26] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[26]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[27] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[27]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[28] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[28]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[29] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[29]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[2] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[2]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[30] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[30]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[31] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[31]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[3] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[3]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[4] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[4]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[5] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[5]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[6] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[6]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[7] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[7]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[8] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[8]),
        .RST(m_ARADDR_i__0_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "0" *) 
  RTL_REG_SYNC__BREG_2 \m_ARADDR_reg__0[9] 
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARADDR[9]),
        .RST(m_ARADDR_i__0_n_0));
  (* INIT_VAL = "INIT_DEFAULT:1'bx,INIT_0:1'bx,INIT_1:1'b1,INIT_2:1'b0,INIT_3:1'bx,INIT_4:1'bx" *) 
  (* XLNX_LINE_COL = "1024" *) 
  (* map_to_module = "24" *) 
  RTL_ROM3 m_ARVALID_i
       (.A(current_state),
        .O(m_ARVALID_i_n_0));
  (* INIT_VAL = "INIT_DEFAULT:1'b0,INIT_0:1'b0,INIT_1:1'b1,INIT_2:1'b1,INIT_3:1'b0,INIT_4:1'b0" *) 
  (* XLNX_LINE_COL = "1024" *) 
  (* map_to_module = "25" *) 
  RTL_ROM3 m_ARVALID_i__0
       (.A(current_state),
        .O(m_ARVALID_i__0_n_0));
  (* SEL_VAL = "I0:S=1'b0,I1:S=default" *) 
  (* XLNX_LINE_COL = "512" *) 
  (* map_to_module = "13" *) 
  RTL_MUX6 m_ARVALID_i__1
       (.I0(1'b1),
        .I1(1'b0),
        .O(m_ARVALID_i__1_n_0),
        .S(rst));
  (* XLNX_LINE_COL = "2304" *) 
  (* map_to_module = "6" *) 
  RTL_LATCH2 m_ARVALID_reg
       (.D(m_ARVALID_i_n_0),
        .G(m_ARVALID_i__0_n_0),
        .Q(m_ARVALID));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "2304" *) 
  (* map_to_module = "1" *) 
  RTL_REG_SYNC__BREG_3 m_ARVALID_reg__0
       (.C(clk),
        .CE(1'b0),
        .D(1'b0),
        .Q(m_ARVALID),
        .RST(m_ARVALID_i__1_n_0));
  (* SEL_VAL = "I0:S=3'b000,I1:S=3'b001,I2:S=3'b010,I3:S=3'b011,I4:S=3'b100,I5:S=default" *) 
  (* XLNX_LINE_COL = "1024" *) 
  (* map_to_module = "32" *) 
  RTL_MUX5 m_AWADDR_i
       (.I0(1'b0),
        .I1(1'b0),
        .I2(1'b0),
        .I3(next_state0),
        .I4(1'b0),
        .I5(1'b0),
        .O(m_AWADDR_i_n_0),
        .S(current_state));
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "11" *) 
  RTL_LATCH3 m_AWADDR_reg
       (.D(address),
        .G(m_AWADDR_i_n_0),
        .Q(m_AWADDR));
  (* INIT_VAL = "INIT_DEFAULT:1'bx,INIT_0:1'bx,INIT_1:1'bx,INIT_2:1'bx,INIT_3:1'b1,INIT_4:1'b0" *) 
  (* XLNX_LINE_COL = "1024" *) 
  (* map_to_module = "27" *) 
  RTL_ROM3 m_AWVALID_i
       (.A(current_state),
        .O(m_AWVALID_i_n_0));
  (* INIT_VAL = "INIT_DEFAULT:1'b0,INIT_0:1'b0,INIT_1:1'b0,INIT_2:1'b0,INIT_3:1'b1,INIT_4:1'b1" *) 
  (* XLNX_LINE_COL = "1024" *) 
  (* map_to_module = "28" *) 
  RTL_ROM3 m_AWVALID_i__0
       (.A(current_state),
        .O(m_AWVALID_i__0_n_0));
  (* XLNX_LINE_COL = "2304" *) 
  (* map_to_module = "8" *) 
  RTL_LATCH2 m_AWVALID_reg
       (.D(m_AWVALID_i_n_0),
        .G(m_AWVALID_i__0_n_0),
        .Q(m_AWVALID));
  (* INIT_VAL = "INIT_DEFAULT:1'bx,INIT_0:1'b0,INIT_1:1'bx,INIT_2:1'bx,INIT_3:1'b1,INIT_4:1'bx" *) 
  (* XLNX_LINE_COL = "1024" *) 
  (* map_to_module = "16" *) 
  RTL_ROM3 m_BREADY_i
       (.A(current_state),
        .O(m_BREADY_i_n_0));
  (* INIT_VAL = "INIT_DEFAULT:1'b0,INIT_0:1'b1,INIT_1:1'b0,INIT_2:1'b0,INIT_3:1'b1,INIT_4:1'b0" *) 
  (* XLNX_LINE_COL = "1024" *) 
  (* map_to_module = "17" *) 
  RTL_ROM3 m_BREADY_i__0
       (.A(current_state),
        .O(m_BREADY_i__0_n_0));
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "4" *) 
  RTL_LATCH2 m_BREADY_reg
       (.D(m_BREADY_i_n_0),
        .G(m_BREADY_i__0_n_0),
        .Q(m_BREADY));
  (* INIT_VAL = "INIT_DEFAULT:1'bx,INIT_0:1'b0,INIT_1:1'b1,INIT_2:1'bx,INIT_3:1'bx,INIT_4:1'bx" *) 
  (* XLNX_LINE_COL = "1024" *) 
  (* map_to_module = "14" *) 
  RTL_ROM3 m_RREADY_i
       (.A(current_state),
        .O(m_RREADY_i_n_0));
  (* INIT_VAL = "INIT_DEFAULT:1'b0,INIT_0:1'b1,INIT_1:1'b1,INIT_2:1'b0,INIT_3:1'b0,INIT_4:1'b0" *) 
  (* XLNX_LINE_COL = "1024" *) 
  (* map_to_module = "15" *) 
  RTL_ROM3 m_RREADY_i__0
       (.A(current_state),
        .O(m_RREADY_i__0_n_0));
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "3" *) 
  RTL_LATCH2 m_RREADY_reg
       (.D(m_RREADY_i_n_0),
        .G(m_RREADY_i__0_n_0),
        .Q(m_RREADY));
  (* SEL_VAL = "I0:S=3'b000,I1:S=3'b001,I2:S=3'b010,I3:S=3'b011,I4:S=3'b100,I5:S=default" *) 
  (* XLNX_LINE_COL = "1024" *) 
  (* map_to_module = "31" *) 
  RTL_MUX5 m_WDATA_i
       (.I0(1'b0),
        .I1(1'b0),
        .I2(1'b0),
        .I3(next_state0),
        .I4(1'b0),
        .I5(1'b0),
        .O(m_WDATA_i_n_0),
        .S(current_state));
  (* XLNX_LINE_COL = "1792" *) 
  (* map_to_module = "10" *) 
  RTL_LATCH3 m_WDATA_reg
       (.D(data_in),
        .G(m_WDATA_i_n_0),
        .Q(m_WDATA));
  (* INIT_VAL = "INIT_DEFAULT:1'bx,INIT_0:1'bx,INIT_1:1'bx,INIT_2:1'bx,INIT_3:1'b1,INIT_4:1'b0" *) 
  (* XLNX_LINE_COL = "1024" *) 
  (* map_to_module = "29" *) 
  RTL_ROM3 m_WVALID_i
       (.A(current_state),
        .O(m_WVALID_i_n_0));
  (* INIT_VAL = "INIT_DEFAULT:1'b0,INIT_0:1'b0,INIT_1:1'b0,INIT_2:1'b0,INIT_3:1'b1,INIT_4:1'b1" *) 
  (* XLNX_LINE_COL = "1024" *) 
  (* map_to_module = "30" *) 
  RTL_ROM3 m_WVALID_i__0
       (.A(current_state),
        .O(m_WVALID_i__0_n_0));
  (* XLNX_LINE_COL = "2048" *) 
  (* map_to_module = "9" *) 
  RTL_LATCH2 m_WVALID_reg
       (.D(m_WVALID_i_n_0),
        .G(m_WVALID_i__0_n_0),
        .Q(m_WVALID));
  (* XLNX_LINE_COL = "1638912" *) 
  (* map_to_module = "33" *) 
  RTL_AND next_state0_i
       (.I0(m_AWREADY),
        .I1(m_WREADY),
        .O(next_state0));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "512" *) 
  (* map_to_module = "20" *) 
  RTL_MUX3 next_state_i
       (.I0({1'b0,1'b0,1'b1}),
        .I1({1'b0,1'b1,1'b1}),
        .O({next_state_i_n_0,next_state_i_n_1,next_state_i_n_2}),
        .S(rd_en));
  (* SEL_VAL = "I0:S=3'b000,I1:S=3'b001,I2:S=3'b010,I3:S=3'b011,I4:S=3'b100" *) 
  (* XLNX_LINE_COL = "1024" *) 
  (* map_to_module = "19" *) 
  RTL_MUX2 next_state_i__0
       (.I0({next_state_i_n_0,next_state_i_n_1,next_state_i_n_2}),
        .I1({1'b0,1'b1,1'b0}),
        .I2({1'b0,1'b0,1'b0}),
        .I3({1'b1,1'b0,1'b0}),
        .I4({1'b0,1'b0,1'b0}),
        .O({next_state_i__0_n_0,next_state_i__0_n_1,next_state_i__0_n_2}),
        .S(current_state));
  (* SEL_VAL = "I0:S=3'b000,I1:S=3'b001,I2:S=3'b010,I3:S=3'b011,I4:S=3'b100,I5:S=default" *) 
  (* XLNX_LINE_COL = "1024" *) 
  (* map_to_module = "18" *) 
  RTL_MUX1 next_state_i__1
       (.I0({next_state_i__0_n_0,next_state_i__0_n_1,next_state_i__0_n_2}),
        .I1({next_state_i__0_n_0,next_state_i__0_n_1,next_state_i__0_n_2}),
        .I2({next_state_i__0_n_0,next_state_i__0_n_1,next_state_i__0_n_2}),
        .I3({next_state_i__0_n_0,next_state_i__0_n_1,next_state_i__0_n_2}),
        .I4({next_state_i__0_n_0,next_state_i__0_n_1,next_state_i__0_n_2}),
        .I5({1'b0,1'b0,1'b0}),
        .O(next_state),
        .S(current_state));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "512" *) 
  (* map_to_module = "23" *) 
  RTL_MUX6 next_state_i__2
       (.I0(1'b1),
        .I1(wrt_en),
        .O(next_state_i__2_n_0),
        .S(rd_en));
  (* SEL_VAL = "I0:S=3'b000,I1:S=3'b001,I2:S=3'b010,I3:S=3'b011,I4:S=3'b100,I5:S=default" *) 
  (* XLNX_LINE_COL = "1024" *) 
  (* map_to_module = "22" *) 
  RTL_MUX5 next_state_i__3
       (.I0(next_state_i__2_n_0),
        .I1(m_ARREADY),
        .I2(1'b1),
        .I3(next_state0),
        .I4(1'b1),
        .I5(1'b0),
        .O(next_state_i__3_n_0),
        .S(current_state));
  (* SEL_VAL = "I0:S=3'b000,I1:S=3'b001,I2:S=3'b010,I3:S=3'b011,I4:S=3'b100,I5:S=default" *) 
  (* XLNX_LINE_COL = "1024" *) 
  (* map_to_module = "21" *) 
  RTL_MUX5 next_state_i__4
       (.I0(next_state_i__3_n_0),
        .I1(next_state_i__3_n_0),
        .I2(next_state_i__3_n_0),
        .I3(next_state_i__3_n_0),
        .I4(next_state_i__3_n_0),
        .I5(1'b1),
        .O(next_state0_out),
        .S(current_state));
  (* XLNX_LINE_COL = "2560" *) 
  (* map_to_module = "5" *) 
  RTL_LATCH1 next_state_reg
       (.D(next_state),
        .G(next_state0_out),
        .Q(next_state_reg__0));
endmodule

(* XLNX_LINE_COL = "461056" *) (* address_width = "32" *) (* data_width = "32" *) 
(* NotValidForBitStream *)
module AXI_4_top
   ();

  wire [14:0]araddr;
  wire arready;
  wire arvalid;
  wire [14:0]awaddr;
  wire awready;
  wire awvalid;
  wire bready;
  wire [1:0]bresp;
  wire bvalid;
  wire [31:0]rdata;
  wire rready;
  wire rvalid;
  wire [31:0]wdata;
  wire wready;
  wire wvalid;
  wire NLW_des_BRAM_PORTA_0_clk_UNCONNECTED;
  wire NLW_des_BRAM_PORTA_0_en_UNCONNECTED;
  wire NLW_des_BRAM_PORTA_0_rst_UNCONNECTED;
  wire [14:0]NLW_des_BRAM_PORTA_0_addr_UNCONNECTED;
  wire [31:0]NLW_des_BRAM_PORTA_0_din_UNCONNECTED;
  wire [3:0]NLW_des_BRAM_PORTA_0_we_UNCONNECTED;
  wire [1:0]NLW_des_S_AXI_0_rresp_UNCONNECTED;
  wire [31:15]NLW_master_m_ARADDR_UNCONNECTED;
  wire [31:15]NLW_master_m_AWADDR_UNCONNECTED;

  (* HW_HANDOFF = "design_2.hwdef" *) 
  (* XLNX_LINE_COL = "656128" *) 
  design_2 des
       (.BRAM_PORTA_0_addr(NLW_des_BRAM_PORTA_0_addr_UNCONNECTED[14:0]),
        .BRAM_PORTA_0_clk(NLW_des_BRAM_PORTA_0_clk_UNCONNECTED),
        .BRAM_PORTA_0_din(NLW_des_BRAM_PORTA_0_din_UNCONNECTED[31:0]),
        .BRAM_PORTA_0_dout({1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0}),
        .BRAM_PORTA_0_en(NLW_des_BRAM_PORTA_0_en_UNCONNECTED),
        .BRAM_PORTA_0_rst(NLW_des_BRAM_PORTA_0_rst_UNCONNECTED),
        .BRAM_PORTA_0_we(NLW_des_BRAM_PORTA_0_we_UNCONNECTED[3:0]),
        .S_AXI_0_araddr(araddr),
        .S_AXI_0_arprot({1'b0,1'b0,1'b0}),
        .S_AXI_0_arready(arready),
        .S_AXI_0_arvalid(arvalid),
        .S_AXI_0_awaddr(awaddr),
        .S_AXI_0_awprot({1'b0,1'b0,1'b0}),
        .S_AXI_0_awready(awready),
        .S_AXI_0_awvalid(awvalid),
        .S_AXI_0_bready(bready),
        .S_AXI_0_bresp(bresp),
        .S_AXI_0_bvalid(bvalid),
        .S_AXI_0_rdata(rdata),
        .S_AXI_0_rready(rready),
        .S_AXI_0_rresp(NLW_des_S_AXI_0_rresp_UNCONNECTED[1:0]),
        .S_AXI_0_rvalid(rvalid),
        .S_AXI_0_wdata(wdata),
        .S_AXI_0_wready(wready),
        .S_AXI_0_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_0_wvalid(wvalid),
        .s_axi_aclk_0(1'b1),
        .s_axi_aresetn_0(1'b0));
  (* XLNX_LINE_COL = "853504" *) 
  (* address_width = "32" *) 
  (* data_width = "32" *) 
  AXI4_master master
       (.address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0}),
        .clk(1'b1),
        .data_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_ARADDR({NLW_master_m_ARADDR_UNCONNECTED[31:15],araddr}),
        .m_ARREADY(arready),
        .m_ARVALID(arvalid),
        .m_AWADDR({NLW_master_m_AWADDR_UNCONNECTED[31:15],awaddr}),
        .m_AWREADY(awready),
        .m_AWVALID(awvalid),
        .m_BREADY(bready),
        .m_BRESP(bresp),
        .m_BVALID(bvalid),
        .m_RDATA(rdata),
        .m_RREADY(rready),
        .m_RVALID(rvalid),
        .m_WDATA(wdata),
        .m_WREADY(wready),
        .m_WVALID(wvalid),
        .rd_en(1'b0),
        .rst(1'b0),
        .wrt_en(1'b0));
endmodule

(* C_BRAM_ADDR_WIDTH = "13" *) (* C_BRAM_INST_MODE = "EXTERNAL" *) (* C_ECC = "0" *) 
(* C_ECC_ONOFF_RESET_VALUE = "0" *) (* C_ECC_TYPE = "0" *) (* C_FAMILY = "artix7" *) 
(* C_FAULT_INJECT = "0" *) (* C_MEMORY_DEPTH = "8192" *) (* C_SELECT_XPM = "1" *) 
(* C_SINGLE_PORT_BRAM = "1" *) (* C_S_AXI_ADDR_WIDTH = "15" *) (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
(* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_ID_WIDTH = "1" *) 
(* C_S_AXI_PROTOCOL = "AXI4LITE" *) (* C_S_AXI_SUPPORTS_NARROW_BURST = "0" *) (* XLNX_LINE_COL = "1536" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module axi_bram_ctrl
   (s_axi_aclk,
    s_axi_aresetn,
    ecc_interrupt,
    ecc_ue,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  input s_axi_aclk;
  input s_axi_aresetn;
  output ecc_interrupt;
  output ecc_ue;
  input [0:0]s_axi_awid;
  input [14:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [14:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [31:0]s_axi_ctrl_awaddr;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  output [1:0]s_axi_ctrl_bresp;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  input [31:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output bram_rst_a;
  output bram_clk_a;
  output bram_en_a;
  output [3:0]bram_we_a;
  output [14:0]bram_addr_a;
  output [31:0]bram_wrdata_a;
  input [31:0]bram_rddata_a;
  output bram_rst_b;
  output bram_clk_b;
  output bram_en_b;
  output [3:0]bram_we_b;
  output [14:0]bram_addr_b;
  output [31:0]bram_wrdata_b;
  input [31:0]bram_rddata_b;

  wire [14:0]bram_addr_a;
  wire [14:0]bram_addr_b;
  wire bram_clk_a;
  wire bram_clk_b;
  wire bram_en_a;
  wire bram_en_b;
  wire [31:0]bram_rddata_a;
  wire [31:0]bram_rddata_b;
  wire bram_rst_a;
  wire bram_rst_b;
  wire [3:0]bram_we_a;
  wire [3:0]bram_we_b;
  wire [31:0]bram_wrdata_a;
  wire [31:0]bram_wrdata_b;
  wire ecc_interrupt;
  wire ecc_ue;
  wire s_axi_aclk;
  wire [14:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire s_axi_aresetn;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [14:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arready;
  wire s_axi_ctrl_arvalid;
  wire [31:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awready;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [1:0]s_axi_ctrl_bresp;
  wire s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire [1:0]s_axi_ctrl_rresp;
  wire s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wready;
  wire s_axi_ctrl_wvalid;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  (* C_BRAM_ADDR_WIDTH = "13" *) 
  (* C_ECC = "0" *) 
  (* C_ECC_ONOFF_RESET_VALUE = "0" *) 
  (* C_ECC_TYPE = "0" *) 
  (* C_FAULT_INJECT = "0" *) 
  (* C_SINGLE_PORT_BRAM = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "15" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ID_WIDTH = "1" *) 
  (* C_S_AXI_PROTOCOL = "AXI4LITE" *) 
  (* C_S_AXI_SUPPORTS_NARROW_BURST = "0" *) 
  (* XLNX_LINE_COL = "4096" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  axi_bram_ctrl_top \gext_inst.abcv4_0_ext_inst 
       (.BRAM_Addr_A(bram_addr_a),
        .BRAM_Addr_B(bram_addr_b),
        .BRAM_Clk_A(bram_clk_a),
        .BRAM_Clk_B(bram_clk_b),
        .BRAM_En_A(bram_en_a),
        .BRAM_En_B(bram_en_b),
        .BRAM_RdData_A(bram_rddata_a),
        .BRAM_RdData_B(bram_rddata_b),
        .BRAM_Rst_A(bram_rst_a),
        .BRAM_Rst_B(bram_rst_b),
        .BRAM_WE_A(bram_we_a),
        .BRAM_WE_B(bram_we_b),
        .BRAM_WrData_A(bram_wrdata_a),
        .BRAM_WrData_B(bram_wrdata_b),
        .ECC_Interrupt(ecc_interrupt),
        .ECC_UE(ecc_ue),
        .S_AXI_ACLK(s_axi_aclk),
        .S_AXI_ARADDR(s_axi_araddr),
        .S_AXI_ARBURST(s_axi_arburst),
        .S_AXI_ARCACHE(s_axi_arcache),
        .S_AXI_ARESETN(s_axi_aresetn),
        .S_AXI_ARID(s_axi_arid),
        .S_AXI_ARLEN(s_axi_arlen),
        .S_AXI_ARLOCK(s_axi_arlock),
        .S_AXI_ARPROT(s_axi_arprot),
        .S_AXI_ARREADY(s_axi_arready),
        .S_AXI_ARSIZE(s_axi_arsize),
        .S_AXI_ARVALID(s_axi_arvalid),
        .S_AXI_AWADDR(s_axi_awaddr),
        .S_AXI_AWBURST(s_axi_awburst),
        .S_AXI_AWCACHE(s_axi_awcache),
        .S_AXI_AWID(s_axi_awid),
        .S_AXI_AWLEN(s_axi_awlen),
        .S_AXI_AWLOCK(s_axi_awlock),
        .S_AXI_AWPROT(s_axi_awprot),
        .S_AXI_AWREADY(s_axi_awready),
        .S_AXI_AWSIZE(s_axi_awsize),
        .S_AXI_AWVALID(s_axi_awvalid),
        .S_AXI_BID(s_axi_bid),
        .S_AXI_BREADY(s_axi_bready),
        .S_AXI_BRESP(s_axi_bresp),
        .S_AXI_BVALID(s_axi_bvalid),
        .S_AXI_CTRL_ARADDR(s_axi_ctrl_araddr),
        .S_AXI_CTRL_ARREADY(s_axi_ctrl_arready),
        .S_AXI_CTRL_ARVALID(s_axi_ctrl_arvalid),
        .S_AXI_CTRL_AWADDR(s_axi_ctrl_awaddr),
        .S_AXI_CTRL_AWREADY(s_axi_ctrl_awready),
        .S_AXI_CTRL_AWVALID(s_axi_ctrl_awvalid),
        .S_AXI_CTRL_BREADY(s_axi_ctrl_bready),
        .S_AXI_CTRL_BRESP(s_axi_ctrl_bresp),
        .S_AXI_CTRL_BVALID(s_axi_ctrl_bvalid),
        .S_AXI_CTRL_RDATA(s_axi_ctrl_rdata),
        .S_AXI_CTRL_RREADY(s_axi_ctrl_rready),
        .S_AXI_CTRL_RRESP(s_axi_ctrl_rresp),
        .S_AXI_CTRL_RVALID(s_axi_ctrl_rvalid),
        .S_AXI_CTRL_WDATA(s_axi_ctrl_wdata),
        .S_AXI_CTRL_WREADY(s_axi_ctrl_wready),
        .S_AXI_CTRL_WVALID(s_axi_ctrl_wvalid),
        .S_AXI_RDATA(s_axi_rdata),
        .S_AXI_RID(s_axi_rid),
        .S_AXI_RLAST(s_axi_rlast),
        .S_AXI_RREADY(s_axi_rready),
        .S_AXI_RRESP(s_axi_rresp),
        .S_AXI_RVALID(s_axi_rvalid),
        .S_AXI_WDATA(s_axi_wdata),
        .S_AXI_WLAST(s_axi_wlast),
        .S_AXI_WREADY(s_axi_wready),
        .S_AXI_WSTRB(s_axi_wstrb),
        .S_AXI_WVALID(s_axi_wvalid));
endmodule

(* C_BRAM_ADDR_WIDTH = "13" *) (* C_ECC = "0" *) (* C_ECC_ONOFF_RESET_VALUE = "0" *) 
(* C_ECC_TYPE = "0" *) (* C_FAULT_INJECT = "0" *) (* C_SINGLE_PORT_BRAM = "1" *) 
(* C_S_AXI_ADDR_WIDTH = "15" *) (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_ID_WIDTH = "1" *) (* C_S_AXI_PROTOCOL = "AXI4LITE" *) 
(* C_S_AXI_SUPPORTS_NARROW_BURST = "0" *) (* XLNX_LINE_COL = "1536" *) (* downgradeipidentifiedwarnings = "yes" *) 
module axi_bram_ctrl_top
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    ECC_Interrupt,
    ECC_UE,
    S_AXI_AWID,
    S_AXI_AWADDR,
    S_AXI_AWLEN,
    S_AXI_AWSIZE,
    S_AXI_AWBURST,
    S_AXI_AWLOCK,
    S_AXI_AWCACHE,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WLAST,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BID,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARID,
    S_AXI_ARADDR,
    S_AXI_ARLEN,
    S_AXI_ARSIZE,
    S_AXI_ARBURST,
    S_AXI_ARLOCK,
    S_AXI_ARCACHE,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RID,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RLAST,
    S_AXI_RVALID,
    S_AXI_RREADY,
    S_AXI_CTRL_AWVALID,
    S_AXI_CTRL_AWREADY,
    S_AXI_CTRL_AWADDR,
    S_AXI_CTRL_WDATA,
    S_AXI_CTRL_WVALID,
    S_AXI_CTRL_WREADY,
    S_AXI_CTRL_BRESP,
    S_AXI_CTRL_BVALID,
    S_AXI_CTRL_BREADY,
    S_AXI_CTRL_ARADDR,
    S_AXI_CTRL_ARVALID,
    S_AXI_CTRL_ARREADY,
    S_AXI_CTRL_RDATA,
    S_AXI_CTRL_RRESP,
    S_AXI_CTRL_RVALID,
    S_AXI_CTRL_RREADY,
    BRAM_Rst_A,
    BRAM_Clk_A,
    BRAM_En_A,
    BRAM_WE_A,
    BRAM_Addr_A,
    BRAM_WrData_A,
    BRAM_RdData_A,
    BRAM_Rst_B,
    BRAM_Clk_B,
    BRAM_En_B,
    BRAM_WE_B,
    BRAM_Addr_B,
    BRAM_WrData_B,
    BRAM_RdData_B);
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  output ECC_Interrupt;
  output ECC_UE;
  input [0:0]S_AXI_AWID;
  input [14:0]S_AXI_AWADDR;
  input [7:0]S_AXI_AWLEN;
  input [2:0]S_AXI_AWSIZE;
  input [1:0]S_AXI_AWBURST;
  input S_AXI_AWLOCK;
  input [3:0]S_AXI_AWCACHE;
  input [2:0]S_AXI_AWPROT;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WLAST;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [0:0]S_AXI_BID;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [0:0]S_AXI_ARID;
  input [14:0]S_AXI_ARADDR;
  input [7:0]S_AXI_ARLEN;
  input [2:0]S_AXI_ARSIZE;
  input [1:0]S_AXI_ARBURST;
  input S_AXI_ARLOCK;
  input [3:0]S_AXI_ARCACHE;
  input [2:0]S_AXI_ARPROT;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [0:0]S_AXI_RID;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RLAST;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
  input S_AXI_CTRL_AWVALID;
  output S_AXI_CTRL_AWREADY;
  input [31:0]S_AXI_CTRL_AWADDR;
  input [31:0]S_AXI_CTRL_WDATA;
  input S_AXI_CTRL_WVALID;
  output S_AXI_CTRL_WREADY;
  output [1:0]S_AXI_CTRL_BRESP;
  output S_AXI_CTRL_BVALID;
  input S_AXI_CTRL_BREADY;
  input [31:0]S_AXI_CTRL_ARADDR;
  input S_AXI_CTRL_ARVALID;
  output S_AXI_CTRL_ARREADY;
  output [31:0]S_AXI_CTRL_RDATA;
  output [1:0]S_AXI_CTRL_RRESP;
  output S_AXI_CTRL_RVALID;
  input S_AXI_CTRL_RREADY;
  output BRAM_Rst_A;
  output BRAM_Clk_A;
  output BRAM_En_A;
  output [3:0]BRAM_WE_A;
  output [14:0]BRAM_Addr_A;
  output [31:0]BRAM_WrData_A;
  input [31:0]BRAM_RdData_A;
  output BRAM_Rst_B;
  output BRAM_Clk_B;
  output BRAM_En_B;
  output [3:0]BRAM_WE_B;
  output [14:0]BRAM_Addr_B;
  output [31:0]BRAM_WrData_B;
  input [31:0]BRAM_RdData_B;

  wire \<const0> ;
  wire [14:0]BRAM_Addr_A;
  wire BRAM_En_A;
  wire [31:0]BRAM_RdData_A;
  wire BRAM_Rst_A;
  wire [3:0]BRAM_WE_A;
  wire [31:0]BRAM_WrData_A;
  wire ECC_Interrupt;
  wire ECC_UE;
  wire RTL_AND__0_n_0;
  wire RTL_AND_n_0;
  wire S_AXI_ACLK;
  wire [14:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARID;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [14:0]S_AXI_AWADDR;
  wire [0:0]S_AXI_AWID;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire [0:0]S_AXI_BID;
  wire S_AXI_BID_int;
  wire S_AXI_BREADY;
  wire [1:0]S_AXI_BRESP;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_CTRL_ARADDR;
  wire S_AXI_CTRL_ARREADY;
  wire S_AXI_CTRL_ARVALID;
  wire [31:0]S_AXI_CTRL_AWADDR;
  wire S_AXI_CTRL_AWREADY;
  wire S_AXI_CTRL_AWVALID;
  wire S_AXI_CTRL_BREADY;
  wire [1:0]S_AXI_CTRL_BRESP;
  wire S_AXI_CTRL_BVALID;
  wire [31:0]S_AXI_CTRL_RDATA;
  wire S_AXI_CTRL_RREADY;
  wire [1:0]S_AXI_CTRL_RRESP;
  wire S_AXI_CTRL_RVALID;
  wire [31:0]S_AXI_CTRL_WDATA;
  wire S_AXI_CTRL_WREADY;
  wire S_AXI_CTRL_WVALID;
  wire [31:0]S_AXI_RDATA;
  wire [0:0]S_AXI_RID;
  wire S_AXI_RID_int;
  wire S_AXI_RLAST;
  wire S_AXI_RREADY;
  wire [1:0]S_AXI_RRESP;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire \NLW_GEN_AXI4LITE.I_AXI_LITE_BRAM_En_B_UNCONNECTED ;
  wire [14:0]\NLW_GEN_AXI4LITE.I_AXI_LITE_BRAM_Addr_B_UNCONNECTED ;
  wire [3:0]\NLW_GEN_AXI4LITE.I_AXI_LITE_BRAM_WE_B_UNCONNECTED ;
  wire [31:0]\NLW_GEN_AXI4LITE.I_AXI_LITE_BRAM_WrData_B_UNCONNECTED ;

  assign BRAM_Addr_B[14] = \<const0> ;
  assign BRAM_Addr_B[13] = \<const0> ;
  assign BRAM_Addr_B[12] = \<const0> ;
  assign BRAM_Addr_B[11] = \<const0> ;
  assign BRAM_Addr_B[10] = \<const0> ;
  assign BRAM_Addr_B[9] = \<const0> ;
  assign BRAM_Addr_B[8] = \<const0> ;
  assign BRAM_Addr_B[7] = \<const0> ;
  assign BRAM_Addr_B[6] = \<const0> ;
  assign BRAM_Addr_B[5] = \<const0> ;
  assign BRAM_Addr_B[4] = \<const0> ;
  assign BRAM_Addr_B[3] = \<const0> ;
  assign BRAM_Addr_B[2] = \<const0> ;
  assign BRAM_Addr_B[1] = \<const0> ;
  assign BRAM_Addr_B[0] = \<const0> ;
  assign BRAM_Clk_A = S_AXI_ACLK;
  assign BRAM_Clk_B = \<const0> ;
  assign BRAM_En_B = \<const0> ;
  assign BRAM_Rst_B = \<const0> ;
  assign BRAM_WE_B[3] = \<const0> ;
  assign BRAM_WE_B[2] = \<const0> ;
  assign BRAM_WE_B[1] = \<const0> ;
  assign BRAM_WE_B[0] = \<const0> ;
  assign BRAM_WrData_B[31] = \<const0> ;
  assign BRAM_WrData_B[30] = \<const0> ;
  assign BRAM_WrData_B[29] = \<const0> ;
  assign BRAM_WrData_B[28] = \<const0> ;
  assign BRAM_WrData_B[27] = \<const0> ;
  assign BRAM_WrData_B[26] = \<const0> ;
  assign BRAM_WrData_B[25] = \<const0> ;
  assign BRAM_WrData_B[24] = \<const0> ;
  assign BRAM_WrData_B[23] = \<const0> ;
  assign BRAM_WrData_B[22] = \<const0> ;
  assign BRAM_WrData_B[21] = \<const0> ;
  assign BRAM_WrData_B[20] = \<const0> ;
  assign BRAM_WrData_B[19] = \<const0> ;
  assign BRAM_WrData_B[18] = \<const0> ;
  assign BRAM_WrData_B[17] = \<const0> ;
  assign BRAM_WrData_B[16] = \<const0> ;
  assign BRAM_WrData_B[15] = \<const0> ;
  assign BRAM_WrData_B[14] = \<const0> ;
  assign BRAM_WrData_B[13] = \<const0> ;
  assign BRAM_WrData_B[12] = \<const0> ;
  assign BRAM_WrData_B[11] = \<const0> ;
  assign BRAM_WrData_B[10] = \<const0> ;
  assign BRAM_WrData_B[9] = \<const0> ;
  assign BRAM_WrData_B[8] = \<const0> ;
  assign BRAM_WrData_B[7] = \<const0> ;
  assign BRAM_WrData_B[6] = \<const0> ;
  assign BRAM_WrData_B[5] = \<const0> ;
  assign BRAM_WrData_B[4] = \<const0> ;
  assign BRAM_WrData_B[3] = \<const0> ;
  assign BRAM_WrData_B[2] = \<const0> ;
  assign BRAM_WrData_B[1] = \<const0> ;
  assign BRAM_WrData_B[0] = \<const0> ;
  (* XLNX_LINE_COL = "1180416" *) 
  (* map_to_module = "107" *) 
  RTL_INV BRAM_Rst_A_i
       (.I0(S_AXI_ARESETN),
        .O(BRAM_Rst_A));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "1379584" *) 
  (* map_to_module = "103" *) 
  RTL_REG_SYNC__BREG_3 \GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_BID_int_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(RTL_AND_n_0),
        .D(S_AXI_AWID),
        .Q(S_AXI_BID),
        .RST(S_AXI_BID_int));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "1379584" *) 
  (* map_to_module = "104" *) 
  RTL_REG_SYNC__BREG_3 \GEN_AXI4LITE.GEN_SIM_ONLY.S_AXI_RID_int_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(RTL_AND__0_n_0),
        .D(S_AXI_ARID),
        .Q(S_AXI_RID),
        .RST(S_AXI_RID_int));
  (* C_CE_COUNTER_WIDTH = "0" *) 
  (* C_CE_FAILING_REGISTERS = "0" *) 
  (* C_ECC = "0" *) 
  (* C_ECC_ONOFF_REGISTER = "0" *) 
  (* C_ECC_ONOFF_RESET_VALUE = "0" *) 
  (* C_ECC_STATUS_REGISTERS = "0" *) 
  (* C_ECC_TYPE = "0" *) 
  (* C_ECC_WIDTH = "0" *) 
  (* C_ENABLE_AXI_CTRL_REG_IF = "0" *) 
  (* C_FAULT_INJECT = "0" *) 
  (* C_SINGLE_PORT_BRAM = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "15" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_PROTOCOL = "AXI4LITE" *) 
  (* C_UE_FAILING_REGISTERS = "0" *) 
  (* XLNX_LINE_COL = "526848" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  axi_lite \GEN_AXI4LITE.I_AXI_LITE 
       (.AXI_ARADDR(S_AXI_ARADDR),
        .AXI_ARREADY(S_AXI_ARREADY),
        .AXI_ARVALID(S_AXI_ARVALID),
        .AXI_AWADDR(S_AXI_AWADDR),
        .AXI_AWREADY(S_AXI_AWREADY),
        .AXI_AWVALID(S_AXI_AWVALID),
        .AXI_BREADY(S_AXI_BREADY),
        .AXI_BRESP(S_AXI_BRESP),
        .AXI_BVALID(S_AXI_BVALID),
        .AXI_CTRL_ARADDR(S_AXI_CTRL_ARADDR),
        .AXI_CTRL_ARREADY(S_AXI_CTRL_ARREADY),
        .AXI_CTRL_ARVALID(S_AXI_CTRL_ARVALID),
        .AXI_CTRL_AWADDR(S_AXI_CTRL_AWADDR),
        .AXI_CTRL_AWREADY(S_AXI_CTRL_AWREADY),
        .AXI_CTRL_AWVALID(S_AXI_CTRL_AWVALID),
        .AXI_CTRL_BREADY(S_AXI_CTRL_BREADY),
        .AXI_CTRL_BRESP(S_AXI_CTRL_BRESP),
        .AXI_CTRL_BVALID(S_AXI_CTRL_BVALID),
        .AXI_CTRL_RDATA(S_AXI_CTRL_RDATA),
        .AXI_CTRL_RREADY(S_AXI_CTRL_RREADY),
        .AXI_CTRL_RRESP(S_AXI_CTRL_RRESP),
        .AXI_CTRL_RVALID(S_AXI_CTRL_RVALID),
        .AXI_CTRL_WDATA(S_AXI_CTRL_WDATA),
        .AXI_CTRL_WREADY(S_AXI_CTRL_WREADY),
        .AXI_CTRL_WVALID(S_AXI_CTRL_WVALID),
        .AXI_RDATA(S_AXI_RDATA),
        .AXI_RLAST(S_AXI_RLAST),
        .AXI_RREADY(S_AXI_RREADY),
        .AXI_RRESP(S_AXI_RRESP),
        .AXI_RVALID(S_AXI_RVALID),
        .AXI_WDATA(S_AXI_WDATA),
        .AXI_WREADY(S_AXI_WREADY),
        .AXI_WSTRB(S_AXI_WSTRB),
        .AXI_WVALID(S_AXI_WVALID),
        .BRAM_Addr_A(BRAM_Addr_A),
        .BRAM_Addr_B(\NLW_GEN_AXI4LITE.I_AXI_LITE_BRAM_Addr_B_UNCONNECTED [14:0]),
        .BRAM_En_A(BRAM_En_A),
        .BRAM_En_B(\NLW_GEN_AXI4LITE.I_AXI_LITE_BRAM_En_B_UNCONNECTED ),
        .BRAM_RdData_A(BRAM_RdData_A),
        .BRAM_RdData_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BRAM_WE_A(BRAM_WE_A),
        .BRAM_WE_B(\NLW_GEN_AXI4LITE.I_AXI_LITE_BRAM_WE_B_UNCONNECTED [3:0]),
        .BRAM_WrData_A(BRAM_WrData_A),
        .BRAM_WrData_B(\NLW_GEN_AXI4LITE.I_AXI_LITE_BRAM_WrData_B_UNCONNECTED [31:0]),
        .ECC_Interrupt(ECC_Interrupt),
        .ECC_UE(ECC_UE),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN));
  GND GND
       (.G(\<const0> ));
  (* XLNX_LINE_COL = "3146496" *) 
  (* map_to_module = "108" *) 
  RTL_AND RTL_AND
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_AWREADY),
        .O(RTL_AND_n_0));
  (* XLNX_LINE_COL = "3146496" *) 
  (* map_to_module = "109" *) 
  RTL_AND RTL_AND__0
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(RTL_AND__0_n_0));
  (* SEL_VAL = "I0:S=1'b0,I1:S=default" *) 
  (* XLNX_LINE_COL = "1379584" *) 
  (* map_to_module = "105" *) 
  RTL_MUX6 S_AXI_BID_int_i
       (.I0(1'b1),
        .I1(1'b0),
        .O(S_AXI_BID_int),
        .S(S_AXI_ARESETN));
  (* SEL_VAL = "I0:S=1'b0,I1:S=default" *) 
  (* XLNX_LINE_COL = "1379584" *) 
  (* map_to_module = "106" *) 
  RTL_MUX6 S_AXI_RID_int_i
       (.I0(1'b1),
        .I1(1'b0),
        .O(S_AXI_RID_int),
        .S(S_AXI_ARESETN));
endmodule

(* C_CE_COUNTER_WIDTH = "0" *) (* C_CE_FAILING_REGISTERS = "0" *) (* C_ECC = "0" *) 
(* C_ECC_ONOFF_REGISTER = "0" *) (* C_ECC_ONOFF_RESET_VALUE = "0" *) (* C_ECC_STATUS_REGISTERS = "0" *) 
(* C_ECC_TYPE = "0" *) (* C_ECC_WIDTH = "0" *) (* C_ENABLE_AXI_CTRL_REG_IF = "0" *) 
(* C_FAULT_INJECT = "0" *) (* C_SINGLE_PORT_BRAM = "1" *) (* C_S_AXI_ADDR_WIDTH = "15" *) 
(* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* C_S_AXI_PROTOCOL = "AXI4LITE" *) (* C_UE_FAILING_REGISTERS = "0" *) (* XLNX_LINE_COL = "1536" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module axi_lite
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    ECC_Interrupt,
    ECC_UE,
    AXI_AWADDR,
    AXI_AWVALID,
    AXI_AWREADY,
    AXI_WDATA,
    AXI_WSTRB,
    AXI_WVALID,
    AXI_WREADY,
    AXI_BRESP,
    AXI_BVALID,
    AXI_BREADY,
    AXI_ARADDR,
    AXI_ARVALID,
    AXI_ARREADY,
    AXI_RDATA,
    AXI_RRESP,
    AXI_RLAST,
    AXI_RVALID,
    AXI_RREADY,
    AXI_CTRL_AWVALID,
    AXI_CTRL_AWREADY,
    AXI_CTRL_AWADDR,
    AXI_CTRL_WDATA,
    AXI_CTRL_WVALID,
    AXI_CTRL_WREADY,
    AXI_CTRL_BRESP,
    AXI_CTRL_BVALID,
    AXI_CTRL_BREADY,
    AXI_CTRL_ARADDR,
    AXI_CTRL_ARVALID,
    AXI_CTRL_ARREADY,
    AXI_CTRL_RDATA,
    AXI_CTRL_RRESP,
    AXI_CTRL_RVALID,
    AXI_CTRL_RREADY,
    BRAM_En_A,
    BRAM_WE_A,
    BRAM_Addr_A,
    BRAM_WrData_A,
    BRAM_RdData_A,
    BRAM_En_B,
    BRAM_WE_B,
    BRAM_Addr_B,
    BRAM_WrData_B,
    BRAM_RdData_B);
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  output ECC_Interrupt;
  output ECC_UE;
  input [14:0]AXI_AWADDR;
  input AXI_AWVALID;
  output AXI_AWREADY;
  input [31:0]AXI_WDATA;
  input [3:0]AXI_WSTRB;
  input AXI_WVALID;
  output AXI_WREADY;
  output [1:0]AXI_BRESP;
  output AXI_BVALID;
  input AXI_BREADY;
  input [14:0]AXI_ARADDR;
  input AXI_ARVALID;
  output AXI_ARREADY;
  output [31:0]AXI_RDATA;
  output [1:0]AXI_RRESP;
  output AXI_RLAST;
  output AXI_RVALID;
  input AXI_RREADY;
  input AXI_CTRL_AWVALID;
  output AXI_CTRL_AWREADY;
  input [31:0]AXI_CTRL_AWADDR;
  input [31:0]AXI_CTRL_WDATA;
  input AXI_CTRL_WVALID;
  output AXI_CTRL_WREADY;
  output [1:0]AXI_CTRL_BRESP;
  output AXI_CTRL_BVALID;
  input AXI_CTRL_BREADY;
  input [31:0]AXI_CTRL_ARADDR;
  input AXI_CTRL_ARVALID;
  output AXI_CTRL_ARREADY;
  output [31:0]AXI_CTRL_RDATA;
  output [1:0]AXI_CTRL_RRESP;
  output AXI_CTRL_RVALID;
  input AXI_CTRL_RREADY;
  output BRAM_En_A;
  output [3:0]BRAM_WE_A;
  output [14:0]BRAM_Addr_A;
  output [31:0]BRAM_WrData_A;
  input [31:0]BRAM_RdData_A;
  output BRAM_En_B;
  output [3:0]BRAM_WE_B;
  output [14:0]BRAM_Addr_B;
  output [31:0]BRAM_WrData_B;
  input [31:0]BRAM_RdData_B;

  wire \<const0> ;
  wire [14:0]AXI_ARADDR;
  wire AXI_ARREADY;
  wire AXI_ARVALID;
  wire [14:0]AXI_AWADDR;
  wire AXI_AWVALID;
  wire AXI_BREADY;
  wire AXI_BVALID;
  wire AXI_RLAST;
  wire AXI_RREADY;
  wire AXI_RVALID;
  wire [31:0]AXI_WDATA;
  wire AXI_WREADY;
  wire [3:0]AXI_WSTRB;
  wire AXI_WVALID;
  wire BRAM_En_A;
  wire [31:0]BRAM_RdData_A;
  wire [2:0]L;
  wire RTL_AND__0_n_0;
  wire RTL_AND__1_n_0;
  wire RTL_AND_n_0;
  wire RTL_EQ_n_0;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARESETN_i_n_0;
  wire axi_aresetn_d1;
  wire axi_aresetn_d2;
  wire axi_bvalid_int0;
  wire axi_bvalid_int1;
  wire axi_bvalid_int2;
  wire axi_rvalid_set_reg;
  wire axi_wready_cmb;
  wire axi_wready_cmb0;
  wire axi_wready_cmb1;
  wire axi_wready_cmb1_i__0_n_0;
  wire axi_wready_cmb_reg;
  wire axi_wready_int;
  wire [14:2]bram_addr_a_int;
  wire bram_addr_a_int1;
  wire bram_addr_a_int2;
  wire bram_addr_a_int3;
  wire bram_en_a_cmb_i__0_n_0;
  wire bram_en_a_cmb_i_n_0;
  wire [3:0]bram_we_a_int;
  wire bram_we_a_int_i_n_0;
  wire bram_we_a_int_i_n_1;
  wire bram_we_a_int_i_n_2;
  wire bram_we_a_int_i_n_3;
  wire [3:0]bram_we_a_int_reg;
  wire bvalid_cnt0;
  wire bvalid_cnt1;
  wire bvalid_cnt1_i__0_n_0;
  wire bvalid_cnt2;
  wire bvalid_cnt_dec1;
  wire bvalid_cnt_dec1_i_n_0;
  wire bvalid_cnt_dec_reg;
  wire bvalid_cnt_i__0_n_0;
  wire bvalid_cnt_i__1_n_0;
  wire bvalid_cnt_i_n_0;
  wire bvalid_cnt_i_n_1;
  wire bvalid_cnt_i_n_2;
  wire [2:0]lite_sm_cs;
  wire lite_sm_cs_i__0_n_1;
  wire lite_sm_cs_i__0_n_2;
  wire lite_sm_cs_i_n_0;
  wire [2:0]lite_sm_ns;
  wire lite_sm_ns0;
  wire lite_sm_ns_i__0_n_0;
  wire lite_sm_ns_i__0_n_1;
  wire lite_sm_ns_i__2_n_0;
  wire lite_sm_ns_i__3_n_0;
  wire lite_sm_ns_i_n_0;
  wire lite_sm_ns_i_n_1;
  wire lite_sm_ns_i_n_2;
  wire [2:0]minusOp;
  wire p_0_in;
  wire p_0_out;
  wire p_1_out;
  wire p_2_out;
  wire [2:0]plusOp;
  wire NLW_bram_addr_a_int3_i_I0_UNCONNECTED;

  assign AXI_AWREADY = AXI_WREADY;
  assign AXI_BRESP[1] = \<const0> ;
  assign AXI_BRESP[0] = \<const0> ;
  assign AXI_CTRL_ARREADY = \<const0> ;
  assign AXI_CTRL_AWREADY = \<const0> ;
  assign AXI_CTRL_BRESP[1] = \<const0> ;
  assign AXI_CTRL_BRESP[0] = \<const0> ;
  assign AXI_CTRL_BVALID = \<const0> ;
  assign AXI_CTRL_RDATA[31] = \<const0> ;
  assign AXI_CTRL_RDATA[30] = \<const0> ;
  assign AXI_CTRL_RDATA[29] = \<const0> ;
  assign AXI_CTRL_RDATA[28] = \<const0> ;
  assign AXI_CTRL_RDATA[27] = \<const0> ;
  assign AXI_CTRL_RDATA[26] = \<const0> ;
  assign AXI_CTRL_RDATA[25] = \<const0> ;
  assign AXI_CTRL_RDATA[24] = \<const0> ;
  assign AXI_CTRL_RDATA[23] = \<const0> ;
  assign AXI_CTRL_RDATA[22] = \<const0> ;
  assign AXI_CTRL_RDATA[21] = \<const0> ;
  assign AXI_CTRL_RDATA[20] = \<const0> ;
  assign AXI_CTRL_RDATA[19] = \<const0> ;
  assign AXI_CTRL_RDATA[18] = \<const0> ;
  assign AXI_CTRL_RDATA[17] = \<const0> ;
  assign AXI_CTRL_RDATA[16] = \<const0> ;
  assign AXI_CTRL_RDATA[15] = \<const0> ;
  assign AXI_CTRL_RDATA[14] = \<const0> ;
  assign AXI_CTRL_RDATA[13] = \<const0> ;
  assign AXI_CTRL_RDATA[12] = \<const0> ;
  assign AXI_CTRL_RDATA[11] = \<const0> ;
  assign AXI_CTRL_RDATA[10] = \<const0> ;
  assign AXI_CTRL_RDATA[9] = \<const0> ;
  assign AXI_CTRL_RDATA[8] = \<const0> ;
  assign AXI_CTRL_RDATA[7] = \<const0> ;
  assign AXI_CTRL_RDATA[6] = \<const0> ;
  assign AXI_CTRL_RDATA[5] = \<const0> ;
  assign AXI_CTRL_RDATA[4] = \<const0> ;
  assign AXI_CTRL_RDATA[3] = \<const0> ;
  assign AXI_CTRL_RDATA[2] = \<const0> ;
  assign AXI_CTRL_RDATA[1] = \<const0> ;
  assign AXI_CTRL_RDATA[0] = \<const0> ;
  assign AXI_CTRL_RRESP[1] = \<const0> ;
  assign AXI_CTRL_RRESP[0] = \<const0> ;
  assign AXI_CTRL_RVALID = \<const0> ;
  assign AXI_CTRL_WREADY = \<const0> ;
  assign AXI_RDATA[31:0] = BRAM_RdData_A;
  assign AXI_RRESP[1] = \<const0> ;
  assign AXI_RRESP[0] = \<const0> ;
  assign BRAM_Addr_A[14] = \<const0> ;
  assign BRAM_Addr_A[13] = \<const0> ;
  assign BRAM_Addr_A[12] = \<const0> ;
  assign BRAM_Addr_A[11] = \<const0> ;
  assign BRAM_Addr_A[10] = \<const0> ;
  assign BRAM_Addr_A[9] = \<const0> ;
  assign BRAM_Addr_A[8] = \<const0> ;
  assign BRAM_Addr_A[7] = \<const0> ;
  assign BRAM_Addr_A[6] = \<const0> ;
  assign BRAM_Addr_A[5] = \<const0> ;
  assign BRAM_Addr_A[4] = \<const0> ;
  assign BRAM_Addr_A[3] = \<const0> ;
  assign BRAM_Addr_A[2] = \<const0> ;
  assign BRAM_Addr_A[1] = \<const0> ;
  assign BRAM_Addr_A[0] = \<const0> ;
  assign BRAM_Addr_B[14] = \<const0> ;
  assign BRAM_Addr_B[13] = \<const0> ;
  assign BRAM_Addr_B[12] = \<const0> ;
  assign BRAM_Addr_B[11] = \<const0> ;
  assign BRAM_Addr_B[10] = \<const0> ;
  assign BRAM_Addr_B[9] = \<const0> ;
  assign BRAM_Addr_B[8] = \<const0> ;
  assign BRAM_Addr_B[7] = \<const0> ;
  assign BRAM_Addr_B[6] = \<const0> ;
  assign BRAM_Addr_B[5] = \<const0> ;
  assign BRAM_Addr_B[4] = \<const0> ;
  assign BRAM_Addr_B[3] = \<const0> ;
  assign BRAM_Addr_B[2] = \<const0> ;
  assign BRAM_Addr_B[1] = \<const0> ;
  assign BRAM_Addr_B[0] = \<const0> ;
  assign BRAM_En_B = \<const0> ;
  assign BRAM_WE_A[3] = \<const0> ;
  assign BRAM_WE_A[2] = \<const0> ;
  assign BRAM_WE_A[1] = \<const0> ;
  assign BRAM_WE_A[0] = \<const0> ;
  assign BRAM_WE_B[3] = \<const0> ;
  assign BRAM_WE_B[2] = \<const0> ;
  assign BRAM_WE_B[1] = \<const0> ;
  assign BRAM_WE_B[0] = \<const0> ;
  assign BRAM_WrData_A[31:0] = AXI_WDATA;
  assign BRAM_WrData_B[31] = \<const0> ;
  assign BRAM_WrData_B[30] = \<const0> ;
  assign BRAM_WrData_B[29] = \<const0> ;
  assign BRAM_WrData_B[28] = \<const0> ;
  assign BRAM_WrData_B[27] = \<const0> ;
  assign BRAM_WrData_B[26] = \<const0> ;
  assign BRAM_WrData_B[25] = \<const0> ;
  assign BRAM_WrData_B[24] = \<const0> ;
  assign BRAM_WrData_B[23] = \<const0> ;
  assign BRAM_WrData_B[22] = \<const0> ;
  assign BRAM_WrData_B[21] = \<const0> ;
  assign BRAM_WrData_B[20] = \<const0> ;
  assign BRAM_WrData_B[19] = \<const0> ;
  assign BRAM_WrData_B[18] = \<const0> ;
  assign BRAM_WrData_B[17] = \<const0> ;
  assign BRAM_WrData_B[16] = \<const0> ;
  assign BRAM_WrData_B[15] = \<const0> ;
  assign BRAM_WrData_B[14] = \<const0> ;
  assign BRAM_WrData_B[13] = \<const0> ;
  assign BRAM_WrData_B[12] = \<const0> ;
  assign BRAM_WrData_B[11] = \<const0> ;
  assign BRAM_WrData_B[10] = \<const0> ;
  assign BRAM_WrData_B[9] = \<const0> ;
  assign BRAM_WrData_B[8] = \<const0> ;
  assign BRAM_WrData_B[7] = \<const0> ;
  assign BRAM_WrData_B[6] = \<const0> ;
  assign BRAM_WrData_B[5] = \<const0> ;
  assign BRAM_WrData_B[4] = \<const0> ;
  assign BRAM_WrData_B[3] = \<const0> ;
  assign BRAM_WrData_B[2] = \<const0> ;
  assign BRAM_WrData_B[1] = \<const0> ;
  assign BRAM_WrData_B[0] = \<const0> ;
  assign ECC_Interrupt = \<const0> ;
  assign ECC_UE = \<const0> ;
  (* SEL_VAL = "I0:S=1'b0,I1:S=default" *) 
  (* XLNX_LINE_COL = "786944" *) 
  (* map_to_module = "43" *) 
  RTL_MUX6 BRAM_En_A_i
       (.I0(1'b0),
        .I1(1'b0),
        .O(BRAM_En_A),
        .S(S_AXI_ARESETN));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "1249024" *) 
  (* map_to_module = "40" *) 
  RTL_REG_SYNC__BREG_6 \GEN_ARREADY.axi_arready_int_reg 
       (.C(S_AXI_ACLK),
        .CE(1'b0),
        .D(1'b0),
        .Q(AXI_ARREADY),
        .RST(p_0_out),
        .SET(p_2_out));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "1117440" *) 
  (* map_to_module = "42" *) 
  RTL_REG_SYNC__BREG_6 \GEN_R.axi_rlast_int_reg 
       (.C(S_AXI_ACLK),
        .CE(1'b0),
        .D(1'b0),
        .Q(AXI_RLAST),
        .RST(p_1_out),
        .SET(1'b0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "1183232" *) 
  (* map_to_module = "41" *) 
  RTL_REG_SYNC__BREG_6 \GEN_R.axi_rvalid_int_reg 
       (.C(S_AXI_ACLK),
        .CE(1'b0),
        .D(1'b0),
        .Q(AXI_RVALID),
        .RST(p_1_out),
        .SET(1'b0));
  GND GND
       (.G(\<const0> ));
  (* XLNX_LINE_COL = "2818816" *) 
  (* map_to_module = "96" *) 
  RTL_AND RTL_AND
       (.I0(AXI_RLAST),
        .I1(AXI_RREADY),
        .O(RTL_AND_n_0));
  (* XLNX_LINE_COL = "2491136" *) 
  (* map_to_module = "93" *) 
  RTL_AND RTL_AND__0
       (.I0(AXI_ARVALID),
        .I1(AXI_ARREADY),
        .O(RTL_AND__0_n_0));
  (* XLNX_LINE_COL = "3474176" *) 
  (* map_to_module = "95" *) 
  RTL_AND RTL_AND__1
       (.I0(axi_aresetn_d1),
        .I1(RTL_EQ_n_0),
        .O(RTL_AND__1_n_0));
  (* XLNX_LINE_COL = "4718848" *) 
  (* map_to_module = "80" *) 
  RTL_EQ0 RTL_EQ
       (.I0(axi_aresetn_d2),
        .I1(1'b0),
        .O(RTL_EQ_n_0));
  (* XLNX_LINE_COL = "3408384" *) 
  (* map_to_module = "97" *) 
  RTL_OR RTL_OR
       (.I0(S_AXI_ARESETN_i_n_0),
        .I1(RTL_AND_n_0),
        .O(p_1_out));
  (* XLNX_LINE_COL = "3408384" *) 
  (* map_to_module = "92" *) 
  RTL_OR RTL_OR__0
       (.I0(S_AXI_ARESETN_i_n_0),
        .I1(RTL_AND__0_n_0),
        .O(p_0_out));
  (* XLNX_LINE_COL = "2949632" *) 
  (* map_to_module = "94" *) 
  RTL_OR RTL_OR__1
       (.I0(1'b0),
        .I1(RTL_AND_n_0),
        .O(p_2_out));
  (* SEL_VAL = "I0:S=1'b0" *) 
  (* XLNX_LINE_COL = "2228480" *) 
  (* map_to_module = "50" *) 
  RTL_MUX17 S_AXI_ARESETN_i
       (.I0(1'b1),
        .O(S_AXI_ARESETN_i_n_0),
        .S(S_AXI_ARESETN));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "790016" *) 
  (* map_to_module = "34" *) 
  RTL_REG__BREG_10 axi_aresetn_d1_reg
       (.C(S_AXI_ACLK),
        .D(S_AXI_ARESETN),
        .Q(axi_aresetn_d1));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "790016" *) 
  (* map_to_module = "35" *) 
  RTL_REG__BREG_10 axi_aresetn_d2_reg
       (.C(S_AXI_ACLK),
        .D(axi_aresetn_d1),
        .Q(axi_aresetn_d2));
  (* XLNX_LINE_COL = "3146240" *) 
  (* map_to_module = "88" *) 
  RTL_OR axi_bvalid_int0_i
       (.I0(S_AXI_ARESETN_i_n_0),
        .I1(axi_bvalid_int1),
        .O(axi_bvalid_int0));
  (* XLNX_LINE_COL = "2294528" *) 
  (* map_to_module = "89" *) 
  RTL_AND axi_bvalid_int1_i
       (.I0(axi_bvalid_int2),
        .I1(1'b0),
        .O(axi_bvalid_int1));
  (* XLNX_LINE_COL = "1769728" *) 
  (* map_to_module = "90" *) 
  RTL_EQ2 axi_bvalid_int2_i
       (.I0(L),
        .I1({1'b0,1'b0,1'b1}),
        .O(axi_bvalid_int2));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "1052160" *) 
  (* map_to_module = "37" *) 
  RTL_REG_SYNC__BREG_4 axi_bvalid_int_reg
       (.C(S_AXI_ACLK),
        .D(bvalid_cnt_dec1_i_n_0),
        .Q(AXI_BVALID),
        .RST(axi_bvalid_int0));
  (* SEL_VAL = "I0:S=3'b000,I1:S=3'b001,I2:S=3'b010,I3:S=3'b011,I4:S=3'b100,I5:S=3'b101,I6:S=default" *) 
  (* XLNX_LINE_COL = "263168" *) 
  (* map_to_module = "51" *) 
  RTL_MUX18 axi_rvalid_set_i
       (.I0(AXI_ARVALID),
        .I1(AXI_ARVALID),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .I6(1'b0),
        .O(axi_rvalid_set_reg),
        .S(lite_sm_cs));
  (* XLNX_LINE_COL = "4260608" *) 
  (* map_to_module = "77" *) 
  RTL_AND axi_wready_cmb0_i
       (.I0(axi_wready_cmb1),
        .I1(axi_wready_cmb1_i__0_n_0),
        .O(axi_wready_cmb0));
  (* XLNX_LINE_COL = "2753280" *) 
  (* map_to_module = "78" *) 
  RTL_AND axi_wready_cmb1_i
       (.I0(AXI_AWVALID),
        .I1(AXI_WVALID),
        .O(axi_wready_cmb1));
  (* XLNX_LINE_COL = "2228736" *) 
  (* map_to_module = "79" *) 
  RTL_NEQ0 axi_wready_cmb1_i__0
       (.I0(L),
        .I1({1'b1,1'b1,1'b1}),
        .O(axi_wready_cmb1_i__0_n_0));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "1049088" *) 
  (* map_to_module = "54" *) 
  RTL_MUX6 axi_wready_cmb_i
       (.I0(1'b0),
        .I1(axi_wready_cmb0),
        .O(axi_wready_cmb),
        .S(AXI_ARVALID));
  (* SEL_VAL = "I0:S=3'b000,I1:S=3'b001,I2:S=3'b010,I3:S=3'b011,I4:S=3'b100,I5:S=3'b101,I6:S=default" *) 
  (* XLNX_LINE_COL = "263168" *) 
  (* map_to_module = "53" *) 
  RTL_MUX18 axi_wready_cmb_i__0
       (.I0(axi_wready_cmb),
        .I1(1'b0),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b1),
        .I5(1'b0),
        .I6(1'b0),
        .O(axi_wready_cmb_reg),
        .S(lite_sm_cs));
  (* SEL_VAL = "I0:S=1'b0,I1:S=default" *) 
  (* XLNX_LINE_COL = "1248768" *) 
  (* map_to_module = "63" *) 
  RTL_MUX6 axi_wready_int_i
       (.I0(1'b1),
        .I1(1'b0),
        .O(axi_wready_int),
        .S(S_AXI_ARESETN));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "1248768" *) 
  (* map_to_module = "39" *) 
  RTL_REG_SYNC__BREG_4 axi_wready_int_reg
       (.C(S_AXI_ACLK),
        .D(1'b0),
        .Q(AXI_WREADY),
        .RST(axi_wready_int));
  (* XLNX_LINE_COL = "6881792" *) 
  (* map_to_module = "98" *) 
  RTL_OR bram_addr_a_int1_i
       (.I0(bram_addr_a_int2),
        .I1(p_0_in),
        .O(bram_addr_a_int1));
  (* XLNX_LINE_COL = "4915968" *) 
  (* map_to_module = "99" *) 
  RTL_AND bram_addr_a_int2_i
       (.I0(AXI_ARVALID),
        .I1(bram_addr_a_int3),
        .O(bram_addr_a_int2));
  (* XLNX_LINE_COL = "4915712" *) 
  (* map_to_module = "100" *) 
  RTL_OR bram_addr_a_int3_i
       (.I0(NLW_bram_addr_a_int3_i_I0_UNCONNECTED),
        .I1(lite_sm_cs_i__0_n_1),
        .O(bram_addr_a_int3));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "790272" *) 
  (* map_to_module = "76" *) 
  RTL_MUX6 bram_addr_a_int_i
       (.I0(AXI_ARADDR[2]),
        .I1(AXI_AWADDR[2]),
        .O(bram_addr_a_int[2]),
        .S(bram_addr_a_int1));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "790272" *) 
  (* map_to_module = "75" *) 
  RTL_MUX6 bram_addr_a_int_i__0
       (.I0(AXI_ARADDR[3]),
        .I1(AXI_AWADDR[3]),
        .O(bram_addr_a_int[3]),
        .S(bram_addr_a_int1));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "790272" *) 
  (* map_to_module = "74" *) 
  RTL_MUX6 bram_addr_a_int_i__1
       (.I0(AXI_ARADDR[4]),
        .I1(AXI_AWADDR[4]),
        .O(bram_addr_a_int[4]),
        .S(bram_addr_a_int1));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "790272" *) 
  (* map_to_module = "65" *) 
  RTL_MUX6 bram_addr_a_int_i__10
       (.I0(AXI_ARADDR[13]),
        .I1(AXI_AWADDR[13]),
        .O(bram_addr_a_int[13]),
        .S(bram_addr_a_int1));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "790272" *) 
  (* map_to_module = "64" *) 
  RTL_MUX6 bram_addr_a_int_i__11
       (.I0(AXI_ARADDR[14]),
        .I1(AXI_AWADDR[14]),
        .O(bram_addr_a_int[14]),
        .S(bram_addr_a_int1));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "790272" *) 
  (* map_to_module = "73" *) 
  RTL_MUX6 bram_addr_a_int_i__2
       (.I0(AXI_ARADDR[5]),
        .I1(AXI_AWADDR[5]),
        .O(bram_addr_a_int[5]),
        .S(bram_addr_a_int1));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "790272" *) 
  (* map_to_module = "72" *) 
  RTL_MUX6 bram_addr_a_int_i__3
       (.I0(AXI_ARADDR[6]),
        .I1(AXI_AWADDR[6]),
        .O(bram_addr_a_int[6]),
        .S(bram_addr_a_int1));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "790272" *) 
  (* map_to_module = "71" *) 
  RTL_MUX6 bram_addr_a_int_i__4
       (.I0(AXI_ARADDR[7]),
        .I1(AXI_AWADDR[7]),
        .O(bram_addr_a_int[7]),
        .S(bram_addr_a_int1));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "790272" *) 
  (* map_to_module = "70" *) 
  RTL_MUX6 bram_addr_a_int_i__5
       (.I0(AXI_ARADDR[8]),
        .I1(AXI_AWADDR[8]),
        .O(bram_addr_a_int[8]),
        .S(bram_addr_a_int1));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "790272" *) 
  (* map_to_module = "69" *) 
  RTL_MUX6 bram_addr_a_int_i__6
       (.I0(AXI_ARADDR[9]),
        .I1(AXI_AWADDR[9]),
        .O(bram_addr_a_int[9]),
        .S(bram_addr_a_int1));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "790272" *) 
  (* map_to_module = "68" *) 
  RTL_MUX6 bram_addr_a_int_i__7
       (.I0(AXI_ARADDR[10]),
        .I1(AXI_AWADDR[10]),
        .O(bram_addr_a_int[10]),
        .S(bram_addr_a_int1));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "790272" *) 
  (* map_to_module = "67" *) 
  RTL_MUX6 bram_addr_a_int_i__8
       (.I0(AXI_ARADDR[11]),
        .I1(AXI_AWADDR[11]),
        .O(bram_addr_a_int[11]),
        .S(bram_addr_a_int1));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "790272" *) 
  (* map_to_module = "66" *) 
  RTL_MUX6 bram_addr_a_int_i__9
       (.I0(AXI_ARADDR[12]),
        .I1(AXI_AWADDR[12]),
        .O(bram_addr_a_int[12]),
        .S(bram_addr_a_int1));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "1049088" *) 
  (* map_to_module = "45" *) 
  RTL_MUX6 bram_en_a_cmb_i
       (.I0(1'b1),
        .I1(axi_wready_cmb0),
        .O(bram_en_a_cmb_i_n_0),
        .S(AXI_ARVALID));
  (* SEL_VAL = "I0:S=3'b000,I1:S=3'b001,I2:S=3'b010,I3:S=3'b011,I4:S=3'b100,I5:S=3'b101,I6:S=default" *) 
  (* XLNX_LINE_COL = "263168" *) 
  (* map_to_module = "44" *) 
  RTL_MUX18 bram_en_a_cmb_i__0
       (.I0(bram_en_a_cmb_i_n_0),
        .I1(AXI_ARVALID),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b1),
        .I6(1'b0),
        .O(bram_en_a_cmb_i__0_n_0),
        .S(lite_sm_cs));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "1049088" *) 
  (* map_to_module = "48" *) 
  RTL_MUX15 bram_we_a_int_i
       (.I0(AXI_WSTRB),
        .I1({1'b0,1'b0,1'b0,1'b0}),
        .O({bram_we_a_int_i_n_0,bram_we_a_int_i_n_1,bram_we_a_int_i_n_2,bram_we_a_int_i_n_3}),
        .S(axi_wready_cmb0));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "1049088" *) 
  (* map_to_module = "47" *) 
  RTL_MUX15 bram_we_a_int_i__0
       (.I0({1'b0,1'b0,1'b0,1'b0}),
        .I1({bram_we_a_int_i_n_0,bram_we_a_int_i_n_1,bram_we_a_int_i_n_2,bram_we_a_int_i_n_3}),
        .O(bram_we_a_int),
        .S(AXI_ARVALID));
  (* SEL_VAL = "I0:S=3'b000,I1:S=3'b001,I2:S=3'b010,I3:S=3'b011,I4:S=3'b100,I5:S=3'b101,I6:S=default" *) 
  (* XLNX_LINE_COL = "263168" *) 
  (* map_to_module = "46" *) 
  RTL_MUX13 bram_we_a_int_i__1
       (.I0(bram_we_a_int),
        .I1({1'b0,1'b0,1'b0,1'b0}),
        .I2({1'b0,1'b0,1'b0,1'b0}),
        .I3({1'b0,1'b0,1'b0,1'b0}),
        .I4({1'b0,1'b0,1'b0,1'b0}),
        .I5({1'b1,1'b1,1'b1,1'b1}),
        .I6({1'b0,1'b0,1'b0,1'b0}),
        .O(bram_we_a_int_reg),
        .S(lite_sm_cs));
  (* XLNX_LINE_COL = "2687744" *) 
  (* map_to_module = "86" *) 
  RTL_AND bvalid_cnt0_i
       (.I0(1'b0),
        .I1(bvalid_cnt1_i__0_n_0),
        .O(bvalid_cnt0));
  (* XLNX_LINE_COL = "2687744" *) 
  (* map_to_module = "81" *) 
  RTL_AND bvalid_cnt1_i
       (.I0(1'b0),
        .I1(bvalid_cnt2),
        .O(bvalid_cnt1));
  (* XLNX_LINE_COL = "3997952" *) 
  (* map_to_module = "87" *) 
  RTL_EQ0 bvalid_cnt1_i__0
       (.I0(1'b0),
        .I1(1'b0),
        .O(bvalid_cnt1_i__0_n_0));
  (* XLNX_LINE_COL = "3997952" *) 
  (* map_to_module = "82" *) 
  RTL_EQ0 bvalid_cnt2_i
       (.I0(1'b0),
        .I1(1'b0),
        .O(bvalid_cnt2));
  (* XLNX_LINE_COL = "4850432" *) 
  (* map_to_module = "83" *) 
  RTL_AND bvalid_cnt_dec0_i
       (.I0(bvalid_cnt_dec1),
        .I1(bvalid_cnt_dec1_i_n_0),
        .O(bvalid_cnt_dec_reg));
  (* XLNX_LINE_COL = "5833216" *) 
  (* map_to_module = "85" *) 
  RTL_NEQ0 bvalid_cnt_dec1_i
       (.I0(L),
        .I1({1'b0,1'b0,1'b0}),
        .O(bvalid_cnt_dec1_i_n_0));
  (* XLNX_LINE_COL = "3212032" *) 
  (* map_to_module = "84" *) 
  RTL_AND bvalid_cnt_dec1_i__0
       (.I0(AXI_BREADY),
        .I1(AXI_BVALID),
        .O(bvalid_cnt_dec1));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "786944" *) 
  (* map_to_module = "52" *) 
  RTL_MUX3 bvalid_cnt_i
       (.I0(plusOp),
        .I1(minusOp),
        .O({bvalid_cnt_i_n_0,bvalid_cnt_i_n_1,bvalid_cnt_i_n_2}),
        .S(bvalid_cnt1));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "786944" *) 
  (* map_to_module = "55" *) 
  RTL_MUX6 bvalid_cnt_i__0
       (.I0(1'b1),
        .I1(bvalid_cnt0),
        .O(bvalid_cnt_i__0_n_0),
        .S(bvalid_cnt1));
  (* SEL_VAL = "I0:S=1'b0,I1:S=default" *) 
  (* XLNX_LINE_COL = "786944" *) 
  (* map_to_module = "56" *) 
  RTL_MUX6 bvalid_cnt_i__1
       (.I0(1'b1),
        .I1(1'b0),
        .O(bvalid_cnt_i__1_n_0),
        .S(S_AXI_ARESETN));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "1051136" *) 
  (* map_to_module = "36" *) 
  RTL_REG_SYNC__BREG_3 \bvalid_cnt_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(bvalid_cnt_i__0_n_0),
        .D(bvalid_cnt_i_n_2),
        .Q(L[0]),
        .RST(bvalid_cnt_i__1_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "1051136" *) 
  (* map_to_module = "36" *) 
  RTL_REG_SYNC__BREG_3 \bvalid_cnt_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(bvalid_cnt_i__0_n_0),
        .D(bvalid_cnt_i_n_1),
        .Q(L[1]),
        .RST(bvalid_cnt_i__1_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "1051136" *) 
  (* map_to_module = "36" *) 
  RTL_REG_SYNC__BREG_3 \bvalid_cnt_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(bvalid_cnt_i__0_n_0),
        .D(bvalid_cnt_i_n_0),
        .Q(L[2]),
        .RST(bvalid_cnt_i__1_n_0));
  (* SEL_VAL = "I0:S=1'b0,I1:S=default" *) 
  (* XLNX_LINE_COL = "786944" *) 
  (* map_to_module = "62" *) 
  RTL_MUX6 lite_sm_cs_i
       (.I0(1'b1),
        .I1(1'b0),
        .O(lite_sm_cs_i_n_0),
        .S(S_AXI_ARESETN));
  (* SEL_VAL = "I0:S=3'b000,I1:S=3'b001,I2:S=3'b010" *) 
  (* XLNX_LINE_COL = "4456704" *) 
  (* map_to_module = "49" *) 
  RTL_MUX16 lite_sm_cs_i__0
       (.I0({1'b0,1'b0,1'b1}),
        .I1({1'b0,1'b1,1'b0}),
        .I2({1'b1,1'b0,1'b0}),
        .O({p_0_in,lite_sm_cs_i__0_n_1,lite_sm_cs_i__0_n_2}),
        .S(lite_sm_cs));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "1051136" *) 
  (* map_to_module = "38" *) 
  RTL_REG_SYNC__BREG_3 \lite_sm_cs_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(lite_sm_ns_i__3_n_0),
        .D(lite_sm_ns[0]),
        .Q(lite_sm_cs[0]),
        .RST(lite_sm_cs_i_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "1051136" *) 
  (* map_to_module = "38" *) 
  RTL_REG_SYNC__BREG_3 \lite_sm_cs_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(lite_sm_ns_i__3_n_0),
        .D(lite_sm_ns[1]),
        .Q(lite_sm_cs[1]),
        .RST(lite_sm_cs_i_n_0));
  (* PRIMITIVE_NAME = "RTL_REG" *) 
  (* XLNX_LINE_COL = "1051136" *) 
  (* map_to_module = "38" *) 
  RTL_REG_SYNC__BREG_3 \lite_sm_cs_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(lite_sm_ns_i__3_n_0),
        .D(lite_sm_ns[2]),
        .Q(lite_sm_cs[2]),
        .RST(lite_sm_cs_i_n_0));
  (* XLNX_LINE_COL = "2491136" *) 
  (* map_to_module = "91" *) 
  RTL_AND lite_sm_ns0_i
       (.I0(AXI_RREADY),
        .I1(AXI_RVALID),
        .O(lite_sm_ns0));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "1049088" *) 
  (* map_to_module = "58" *) 
  RTL_MUX3 lite_sm_ns_i
       (.I0({1'b0,1'b1,1'b0}),
        .I1({1'b0,1'b0,1'b1}),
        .O({lite_sm_ns_i_n_0,lite_sm_ns_i_n_1,lite_sm_ns_i_n_2}),
        .S(AXI_ARVALID));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "1049088" *) 
  (* map_to_module = "59" *) 
  RTL_MUX26 lite_sm_ns_i__0
       (.I0({1'b1,1'b0}),
        .I1({1'b0,1'b0}),
        .O({lite_sm_ns_i__0_n_0,lite_sm_ns_i__0_n_1}),
        .S(AXI_ARVALID));
  (* SEL_VAL = "I0:S=3'b000,I1:S=3'b001,I2:S=3'b010,I3:S=3'b011,I4:S=3'b100,I5:S=3'b101,I6:S=default" *) 
  (* XLNX_LINE_COL = "263168" *) 
  (* map_to_module = "57" *) 
  RTL_MUX24 lite_sm_ns_i__1
       (.I0({lite_sm_ns_i_n_0,lite_sm_ns_i_n_1,lite_sm_ns_i_n_2}),
        .I1({lite_sm_ns_i__0_n_0,lite_sm_ns_i__0_n_1}),
        .I2({1'b0,1'b0,1'b0}),
        .I3({1'b1,1'b0,1'b0}),
        .I4({1'b1,1'b0,1'b1}),
        .I5({1'b0,1'b0,1'b0}),
        .I6({1'b0,1'b0,1'b0}),
        .O(lite_sm_ns),
        .S(lite_sm_cs));
  (* SEL_VAL = "I0:S=1'b1,I1:S=default" *) 
  (* XLNX_LINE_COL = "1049088" *) 
  (* map_to_module = "61" *) 
  RTL_MUX6 lite_sm_ns_i__2
       (.I0(1'b1),
        .I1(axi_wready_cmb0),
        .O(lite_sm_ns_i__2_n_0),
        .S(AXI_ARVALID));
  (* SEL_VAL = "I0:S=3'b000,I1:S=3'b001,I2:S=3'b010,I3:S=3'b011,I4:S=3'b100,I5:S=3'b101,I6:S=default" *) 
  (* XLNX_LINE_COL = "263168" *) 
  (* map_to_module = "60" *) 
  RTL_MUX18 lite_sm_ns_i__3
       (.I0(lite_sm_ns_i__2_n_0),
        .I1(1'b1),
        .I2(lite_sm_ns0),
        .I3(1'b1),
        .I4(1'b1),
        .I5(1'b1),
        .I6(1'b1),
        .O(lite_sm_ns_i__3_n_0),
        .S(lite_sm_cs));
  (* XLNX_LINE_COL = "5439744" *) 
  (* map_to_module = "102" *) 
  RTL_SUB minusOp_i
       (.I0(L),
        .I1(1'b1),
        .O(minusOp));
  (* XLNX_LINE_COL = "5439744" *) 
  (* map_to_module = "101" *) 
  RTL_ADD plusOp_i
       (.I0(L),
        .I1(1'b1),
        .O(plusOp));
endmodule

(* HW_HANDOFF = "design_2.hwdef" *) (* XLNX_LINE_COL = "460800" *) 
module design_2
   (BRAM_PORTA_0_addr,
    BRAM_PORTA_0_clk,
    BRAM_PORTA_0_din,
    BRAM_PORTA_0_dout,
    BRAM_PORTA_0_en,
    BRAM_PORTA_0_rst,
    BRAM_PORTA_0_we,
    S_AXI_0_araddr,
    S_AXI_0_arprot,
    S_AXI_0_arready,
    S_AXI_0_arvalid,
    S_AXI_0_awaddr,
    S_AXI_0_awprot,
    S_AXI_0_awready,
    S_AXI_0_awvalid,
    S_AXI_0_bready,
    S_AXI_0_bresp,
    S_AXI_0_bvalid,
    S_AXI_0_rdata,
    S_AXI_0_rready,
    S_AXI_0_rresp,
    S_AXI_0_rvalid,
    S_AXI_0_wdata,
    S_AXI_0_wready,
    S_AXI_0_wstrb,
    S_AXI_0_wvalid,
    s_axi_aclk_0,
    s_axi_aresetn_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA_0, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_WRITE_MODE READ_WRITE" *) output [14:0]BRAM_PORTA_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 CLK" *) output BRAM_PORTA_0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 DIN" *) output [31:0]BRAM_PORTA_0_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 DOUT" *) input [31:0]BRAM_PORTA_0_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 EN" *) output BRAM_PORTA_0_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 RST" *) output BRAM_PORTA_0_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 WE" *) output [3:0]BRAM_PORTA_0_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_0, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_2_s_axi_aclk_0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [14:0]S_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARPROT" *) input [2:0]S_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARREADY" *) output S_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARVALID" *) input S_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWADDR" *) input [14:0]S_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWPROT" *) input [2:0]S_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWREADY" *) output S_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWVALID" *) input S_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 BREADY" *) input S_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 BRESP" *) output [1:0]S_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 BVALID" *) output S_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RDATA" *) output [31:0]S_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RREADY" *) input S_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RRESP" *) output [1:0]S_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RVALID" *) output S_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WDATA" *) input [31:0]S_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WREADY" *) output S_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WSTRB" *) input [3:0]S_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WVALID" *) input S_AXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK_0, ASSOCIATED_BUSIF S_AXI_0, ASSOCIATED_RESET s_axi_aresetn_0, CLK_DOMAIN design_2_s_axi_aclk_0, FREQ_HZ 100000000, PHASE 0.000" *) input s_axi_aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN_0, POLARITY ACTIVE_LOW" *) input s_axi_aresetn_0;

  wire [14:0]BRAM_PORTA_0_addr;
  wire BRAM_PORTA_0_clk;
  wire [31:0]BRAM_PORTA_0_din;
  wire [31:0]BRAM_PORTA_0_dout;
  wire BRAM_PORTA_0_en;
  wire BRAM_PORTA_0_rst;
  wire [3:0]BRAM_PORTA_0_we;
  wire [14:0]S_AXI_0_araddr;
  wire [2:0]S_AXI_0_arprot;
  wire S_AXI_0_arready;
  wire S_AXI_0_arvalid;
  wire [14:0]S_AXI_0_awaddr;
  wire [2:0]S_AXI_0_awprot;
  wire S_AXI_0_awready;
  wire S_AXI_0_awvalid;
  wire S_AXI_0_bready;
  wire [1:0]S_AXI_0_bresp;
  wire S_AXI_0_bvalid;
  wire [31:0]S_AXI_0_rdata;
  wire S_AXI_0_rready;
  wire [1:0]S_AXI_0_rresp;
  wire S_AXI_0_rvalid;
  wire [31:0]S_AXI_0_wdata;
  wire S_AXI_0_wready;
  wire [3:0]S_AXI_0_wstrb;
  wire S_AXI_0_wvalid;
  wire s_axi_aclk_0;
  wire s_axi_aresetn_0;

  (* CHECK_LICENSE_TYPE = "design_2_axi_bram_ctrl_0_0,axi_bram_ctrl,{}" *) 
  (* XLNX_LINE_COL = "1904384" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "axi_bram_ctrl,Vivado 2018.2" *) 
  design_2_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(BRAM_PORTA_0_addr),
        .bram_clk_a(BRAM_PORTA_0_clk),
        .bram_en_a(BRAM_PORTA_0_en),
        .bram_rddata_a(BRAM_PORTA_0_dout),
        .bram_rst_a(BRAM_PORTA_0_rst),
        .bram_we_a(BRAM_PORTA_0_we),
        .bram_wrdata_a(BRAM_PORTA_0_din),
        .s_axi_aclk(s_axi_aclk_0),
        .s_axi_araddr(S_AXI_0_araddr),
        .s_axi_aresetn(s_axi_aresetn_0),
        .s_axi_arprot(S_AXI_0_arprot),
        .s_axi_arready(S_AXI_0_arready),
        .s_axi_arvalid(S_AXI_0_arvalid),
        .s_axi_awaddr(S_AXI_0_awaddr),
        .s_axi_awprot(S_AXI_0_awprot),
        .s_axi_awready(S_AXI_0_awready),
        .s_axi_awvalid(S_AXI_0_awvalid),
        .s_axi_bready(S_AXI_0_bready),
        .s_axi_bresp(S_AXI_0_bresp),
        .s_axi_bvalid(S_AXI_0_bvalid),
        .s_axi_rdata(S_AXI_0_rdata),
        .s_axi_rready(S_AXI_0_rready),
        .s_axi_rresp(S_AXI_0_rresp),
        .s_axi_rvalid(S_AXI_0_rvalid),
        .s_axi_wdata(S_AXI_0_wdata),
        .s_axi_wready(S_AXI_0_wready),
        .s_axi_wstrb(S_AXI_0_wstrb),
        .s_axi_wvalid(S_AXI_0_wvalid));
endmodule

(* CHECK_LICENSE_TYPE = "design_2_axi_bram_ctrl_0_0,axi_bram_ctrl,{}" *) (* XLNX_LINE_COL = "1536" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "axi_bram_ctrl,Vivado 2018.2" *) 
module design_2_axi_bram_ctrl_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXI:S_AXI_CTRL, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_2_s_axi_aclk_0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 15, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_2_s_axi_aclk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [14:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [14:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_WRITE_MODE READ_WRITE" *) output bram_rst_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) output bram_clk_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) output bram_en_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) output [3:0]bram_we_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) output [14:0]bram_addr_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) output [31:0]bram_wrdata_a;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) input [31:0]bram_rddata_a;

  wire [14:0]bram_addr_a;
  wire bram_clk_a;
  wire bram_en_a;
  wire [31:0]bram_rddata_a;
  wire bram_rst_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [14:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [14:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_bram_clk_b_UNCONNECTED;
  wire NLW_U0_bram_en_b_UNCONNECTED;
  wire NLW_U0_bram_rst_b_UNCONNECTED;
  wire NLW_U0_ecc_interrupt_UNCONNECTED;
  wire NLW_U0_ecc_ue_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_wready_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire [14:0]NLW_U0_bram_addr_b_UNCONNECTED;
  wire [3:0]NLW_U0_bram_we_b_UNCONNECTED;
  wire [31:0]NLW_U0_bram_wrdata_b_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;

  (* C_BRAM_ADDR_WIDTH = "13" *) 
  (* C_BRAM_INST_MODE = "EXTERNAL" *) 
  (* C_ECC = "0" *) 
  (* C_ECC_ONOFF_RESET_VALUE = "0" *) 
  (* C_ECC_TYPE = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FAULT_INJECT = "0" *) 
  (* C_MEMORY_DEPTH = "8192" *) 
  (* C_SELECT_XPM = "1" *) 
  (* C_SINGLE_PORT_BRAM = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "15" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ID_WIDTH = "1" *) 
  (* C_S_AXI_PROTOCOL = "AXI4LITE" *) 
  (* C_S_AXI_SUPPORTS_NARROW_BURST = "0" *) 
  (* XLNX_LINE_COL = "131584" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  axi_bram_ctrl U0
       (.bram_addr_a(bram_addr_a),
        .bram_addr_b(NLW_U0_bram_addr_b_UNCONNECTED[14:0]),
        .bram_clk_a(bram_clk_a),
        .bram_clk_b(NLW_U0_bram_clk_b_UNCONNECTED),
        .bram_en_a(bram_en_a),
        .bram_en_b(NLW_U0_bram_en_b_UNCONNECTED),
        .bram_rddata_a(bram_rddata_a),
        .bram_rddata_b({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bram_rst_a(bram_rst_a),
        .bram_rst_b(NLW_U0_bram_rst_b_UNCONNECTED),
        .bram_we_a(bram_we_a),
        .bram_we_b(NLW_U0_bram_we_b_UNCONNECTED[3:0]),
        .bram_wrdata_a(bram_wrdata_a),
        .bram_wrdata_b(NLW_U0_bram_wrdata_b_UNCONNECTED[31:0]),
        .ecc_interrupt(NLW_U0_ecc_interrupt_UNCONNECTED),
        .ecc_ue(NLW_U0_ecc_ue_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_arready(NLW_U0_s_axi_ctrl_arready_UNCONNECTED),
        .s_axi_ctrl_arvalid(1'b0),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(NLW_U0_s_axi_ctrl_awready_UNCONNECTED),
        .s_axi_ctrl_awvalid(1'b0),
        .s_axi_ctrl_bready(1'b0),
        .s_axi_ctrl_bresp(NLW_U0_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED),
        .s_axi_ctrl_rdata(NLW_U0_s_axi_ctrl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctrl_rready(1'b0),
        .s_axi_ctrl_rresp(NLW_U0_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_wready(NLW_U0_s_axi_ctrl_wready_UNCONNECTED),
        .s_axi_ctrl_wvalid(1'b0),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
