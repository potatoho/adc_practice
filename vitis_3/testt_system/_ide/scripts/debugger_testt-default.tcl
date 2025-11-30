# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\annoa\ad7960_ip_2\vitis_3\testt_system\_ide\scripts\debugger_testt-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\annoa\ad7960_ip_2\vitis_3\testt_system\_ide\scripts\debugger_testt-default.tcl
# 
connect -url tcp:127.0.0.1:3121
source C:/Xilinx/Vitis/2022.2/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx HW-Z1-ZCU104 FT4232H 61570A" && level==0 && jtag_device_ctx=="jsn-HW-Z1-ZCU104 FT4232H-61570A-14730093-0"}
fpga -file C:/Users/annoa/ad7960_ip_2/vitis_3/testt/_ide/bitstream/design_1_wrapper_3.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/annoa/ad7960_ip_2/vitis_3/design_1_wrapper_3/export/design_1_wrapper_3/hw/design_1_wrapper_3.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow C:/Users/annoa/ad7960_ip_2/vitis_3/design_1_wrapper_3/export/design_1_wrapper_3/sw/design_1_wrapper_3/boot/fsbl.elf
set bp_18_13_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_18_13_fsbl_bp
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow C:/Users/annoa/ad7960_ip_2/vitis_3/testt/Debug/testt.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A53*#0"}
con
