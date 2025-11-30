// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Nov 27 11:30:36 2025
// Host        : sunset running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_smartconnect_0_0 -prefix
//               design_1_smartconnect_0_0_ design_1_smartconnect_0_0_stub.v
// Design      : design_1_smartconnect_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_48ac,Vivado 2022.2" *)
module design_1_smartconnect_0_0(aclk, aresetn, S00_AXI_awaddr, S00_AXI_awlen, 
  S00_AXI_awsize, S00_AXI_awburst, S00_AXI_awlock, S00_AXI_awcache, S00_AXI_awprot, 
  S00_AXI_awqos, S00_AXI_awvalid, S00_AXI_awready, S00_AXI_wdata, S00_AXI_wstrb, 
  S00_AXI_wlast, S00_AXI_wvalid, S00_AXI_wready, S00_AXI_bresp, S00_AXI_bvalid, 
  S00_AXI_bready, S01_AXI_awid, S01_AXI_awaddr, S01_AXI_awlen, S01_AXI_awsize, 
  S01_AXI_awburst, S01_AXI_awlock, S01_AXI_awcache, S01_AXI_awprot, S01_AXI_awregion, 
  S01_AXI_awqos, S01_AXI_awuser, S01_AXI_awvalid, S01_AXI_awready, S01_AXI_wid, 
  S01_AXI_wdata, S01_AXI_wstrb, S01_AXI_wlast, S01_AXI_wuser, S01_AXI_wvalid, S01_AXI_wready, 
  S01_AXI_bid, S01_AXI_bresp, S01_AXI_buser, S01_AXI_bvalid, S01_AXI_bready, S01_AXI_arid, 
  S01_AXI_araddr, S01_AXI_arlen, S01_AXI_arsize, S01_AXI_arburst, S01_AXI_arlock, 
  S01_AXI_arcache, S01_AXI_arprot, S01_AXI_arregion, S01_AXI_arqos, S01_AXI_aruser, 
  S01_AXI_arvalid, S01_AXI_arready, S01_AXI_rid, S01_AXI_rdata, S01_AXI_rresp, S01_AXI_rlast, 
  S01_AXI_ruser, S01_AXI_rvalid, S01_AXI_rready, M00_AXI_awaddr, M00_AXI_awlen, 
  M00_AXI_awsize, M00_AXI_awburst, M00_AXI_awlock, M00_AXI_awcache, M00_AXI_awprot, 
  M00_AXI_awqos, M00_AXI_awvalid, M00_AXI_awready, M00_AXI_wdata, M00_AXI_wstrb, 
  M00_AXI_wlast, M00_AXI_wvalid, M00_AXI_wready, M00_AXI_bresp, M00_AXI_bvalid, 
  M00_AXI_bready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,S00_AXI_awaddr[31:0],S00_AXI_awlen[7:0],S00_AXI_awsize[2:0],S00_AXI_awburst[1:0],S00_AXI_awlock[0:0],S00_AXI_awcache[3:0],S00_AXI_awprot[2:0],S00_AXI_awqos[3:0],S00_AXI_awvalid,S00_AXI_awready,S00_AXI_wdata[31:0],S00_AXI_wstrb[3:0],S00_AXI_wlast,S00_AXI_wvalid,S00_AXI_wready,S00_AXI_bresp[1:0],S00_AXI_bvalid,S00_AXI_bready,S01_AXI_awid,S01_AXI_awaddr,S01_AXI_awlen,S01_AXI_awsize[2:0],S01_AXI_awburst[1:0],S01_AXI_awlock,S01_AXI_awcache[3:0],S01_AXI_awprot[2:0],S01_AXI_awregion[3:0],S01_AXI_awqos[3:0],S01_AXI_awuser,S01_AXI_awvalid[0:0],S01_AXI_awready[0:0],S01_AXI_wid,S01_AXI_wdata,S01_AXI_wstrb,S01_AXI_wlast[0:0],S01_AXI_wuser,S01_AXI_wvalid[0:0],S01_AXI_wready[0:0],S01_AXI_bid,S01_AXI_bresp[1:0],S01_AXI_buser,S01_AXI_bvalid[0:0],S01_AXI_bready[0:0],S01_AXI_arid,S01_AXI_araddr,S01_AXI_arlen,S01_AXI_arsize[2:0],S01_AXI_arburst[1:0],S01_AXI_arlock,S01_AXI_arcache[3:0],S01_AXI_arprot[2:0],S01_AXI_arregion[3:0],S01_AXI_arqos[3:0],S01_AXI_aruser,S01_AXI_arvalid[0:0],S01_AXI_arready[0:0],S01_AXI_rid,S01_AXI_rdata,S01_AXI_rresp[1:0],S01_AXI_rlast[0:0],S01_AXI_ruser,S01_AXI_rvalid[0:0],S01_AXI_rready[0:0],M00_AXI_awaddr[48:0],M00_AXI_awlen[7:0],M00_AXI_awsize[2:0],M00_AXI_awburst[1:0],M00_AXI_awlock[0:0],M00_AXI_awcache[3:0],M00_AXI_awprot[2:0],M00_AXI_awqos[3:0],M00_AXI_awvalid,M00_AXI_awready,M00_AXI_wdata[127:0],M00_AXI_wstrb[15:0],M00_AXI_wlast,M00_AXI_wvalid,M00_AXI_wready,M00_AXI_bresp[1:0],M00_AXI_bvalid,M00_AXI_bready" */;
  input aclk;
  input aresetn;
  input [31:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  input S00_AXI_awvalid;
  output S00_AXI_awready;
  input [31:0]S00_AXI_wdata;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  output S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input S00_AXI_bready;
  input S01_AXI_awid;
  input S01_AXI_awaddr;
  input S01_AXI_awlen;
  input [2:0]S01_AXI_awsize;
  input [1:0]S01_AXI_awburst;
  input S01_AXI_awlock;
  input [3:0]S01_AXI_awcache;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awregion;
  input [3:0]S01_AXI_awqos;
  input S01_AXI_awuser;
  input [0:0]S01_AXI_awvalid;
  output [0:0]S01_AXI_awready;
  input S01_AXI_wid;
  input S01_AXI_wdata;
  input S01_AXI_wstrb;
  input [0:0]S01_AXI_wlast;
  input S01_AXI_wuser;
  input [0:0]S01_AXI_wvalid;
  output [0:0]S01_AXI_wready;
  output S01_AXI_bid;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_buser;
  output [0:0]S01_AXI_bvalid;
  input [0:0]S01_AXI_bready;
  input S01_AXI_arid;
  input S01_AXI_araddr;
  input S01_AXI_arlen;
  input [2:0]S01_AXI_arsize;
  input [1:0]S01_AXI_arburst;
  input S01_AXI_arlock;
  input [3:0]S01_AXI_arcache;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arregion;
  input [3:0]S01_AXI_arqos;
  input S01_AXI_aruser;
  input [0:0]S01_AXI_arvalid;
  output [0:0]S01_AXI_arready;
  output S01_AXI_rid;
  output S01_AXI_rdata;
  output [1:0]S01_AXI_rresp;
  output [0:0]S01_AXI_rlast;
  output S01_AXI_ruser;
  output [0:0]S01_AXI_rvalid;
  input [0:0]S01_AXI_rready;
  output [48:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [127:0]M00_AXI_wdata;
  output [15:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
endmodule
