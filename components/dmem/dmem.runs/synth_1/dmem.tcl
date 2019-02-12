# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/ECHOES/Desktop/lab3/dmem/dmem.cache/wt [current_project]
set_property parent.project_path C:/Users/ECHOES/Desktop/lab3/dmem/dmem.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib C:/Users/ECHOES/Desktop/lab3/dmem/dmem.srcs/sources_1/new/dmem.v
synth_design -top dmem -part xc7a100tcsg324-1
write_checkpoint -noxdef dmem.dcp
catch { report_utilization -file dmem_utilization_synth.rpt -pb dmem_utilization_synth.pb }
