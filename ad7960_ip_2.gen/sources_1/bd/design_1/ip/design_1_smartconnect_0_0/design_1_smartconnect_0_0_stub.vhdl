-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Nov 27 11:30:36 2025
-- Host        : sunset running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_smartconnect_0_0 -prefix
--               design_1_smartconnect_0_0_ design_1_smartconnect_0_0_stub.vhdl
-- Design      : design_1_smartconnect_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_smartconnect_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S01_AXI_awid : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC;
    S01_AXI_awlen : in STD_LOGIC;
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awlock : in STD_LOGIC;
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awuser : in STD_LOGIC;
    S01_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wid : in STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC;
    S01_AXI_wstrb : in STD_LOGIC;
    S01_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wuser : in STD_LOGIC;
    S01_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bid : out STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_buser : out STD_LOGIC;
    S01_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arid : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC;
    S01_AXI_arlen : in STD_LOGIC;
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arlock : in STD_LOGIC;
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_aruser : in STD_LOGIC;
    S01_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rid : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_ruser : out STD_LOGIC;
    S01_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 48 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC
  );

end design_1_smartconnect_0_0;

architecture stub of design_1_smartconnect_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,S00_AXI_awaddr[31:0],S00_AXI_awlen[7:0],S00_AXI_awsize[2:0],S00_AXI_awburst[1:0],S00_AXI_awlock[0:0],S00_AXI_awcache[3:0],S00_AXI_awprot[2:0],S00_AXI_awqos[3:0],S00_AXI_awvalid,S00_AXI_awready,S00_AXI_wdata[31:0],S00_AXI_wstrb[3:0],S00_AXI_wlast,S00_AXI_wvalid,S00_AXI_wready,S00_AXI_bresp[1:0],S00_AXI_bvalid,S00_AXI_bready,S01_AXI_awid,S01_AXI_awaddr,S01_AXI_awlen,S01_AXI_awsize[2:0],S01_AXI_awburst[1:0],S01_AXI_awlock,S01_AXI_awcache[3:0],S01_AXI_awprot[2:0],S01_AXI_awregion[3:0],S01_AXI_awqos[3:0],S01_AXI_awuser,S01_AXI_awvalid[0:0],S01_AXI_awready[0:0],S01_AXI_wid,S01_AXI_wdata,S01_AXI_wstrb,S01_AXI_wlast[0:0],S01_AXI_wuser,S01_AXI_wvalid[0:0],S01_AXI_wready[0:0],S01_AXI_bid,S01_AXI_bresp[1:0],S01_AXI_buser,S01_AXI_bvalid[0:0],S01_AXI_bready[0:0],S01_AXI_arid,S01_AXI_araddr,S01_AXI_arlen,S01_AXI_arsize[2:0],S01_AXI_arburst[1:0],S01_AXI_arlock,S01_AXI_arcache[3:0],S01_AXI_arprot[2:0],S01_AXI_arregion[3:0],S01_AXI_arqos[3:0],S01_AXI_aruser,S01_AXI_arvalid[0:0],S01_AXI_arready[0:0],S01_AXI_rid,S01_AXI_rdata,S01_AXI_rresp[1:0],S01_AXI_rlast[0:0],S01_AXI_ruser,S01_AXI_rvalid[0:0],S01_AXI_rready[0:0],M00_AXI_awaddr[48:0],M00_AXI_awlen[7:0],M00_AXI_awsize[2:0],M00_AXI_awburst[1:0],M00_AXI_awlock[0:0],M00_AXI_awcache[3:0],M00_AXI_awprot[2:0],M00_AXI_awqos[3:0],M00_AXI_awvalid,M00_AXI_awready,M00_AXI_wdata[127:0],M00_AXI_wstrb[15:0],M00_AXI_wlast,M00_AXI_wvalid,M00_AXI_wready,M00_AXI_bresp[1:0],M00_AXI_bvalid,M00_AXI_bready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_48ac,Vivado 2022.2";
begin
end;
