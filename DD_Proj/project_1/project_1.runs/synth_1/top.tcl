# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a100tfgg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.cache/wt [current_project]
set_property parent.project_path C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/03087bf40ad162d9f2d351a51795beec8a136327677a.coe
read_verilog -library xil_defaultlib {
  C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/bottomFlag.v
  C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/clock_div.v
  C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/clock_div_bps.v
  C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/flowLED.v
  C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/fsm.v
  C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/gameControl.v
  C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/play.v
  C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/seg_functions.v
  C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/seg_tube.v
  C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/vga.v
  C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/vga_sync.v
  C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/new/top.v
}
read_ip -quiet C:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/ip/image_0/image_0.xci
set_property used_in_implementation false [get_files -all c:/Users/Administrator/Desktop/DD_Proj/project_1/project_1.srcs/sources_1/ip/image_0/image_0_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc
set_property used_in_implementation false [get_files C:/Users/Administrator/Desktop/DD_Proj/project_1/rtl_1.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top top -part xc7a100tfgg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb"
