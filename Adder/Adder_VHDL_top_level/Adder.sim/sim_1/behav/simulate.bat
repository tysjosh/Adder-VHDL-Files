@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xsim two_bit_testbench_behav -key {Behavioral:sim_1:Functional:two_bit_testbench} -tclbatch two_bit_testbench.tcl -view C:/Users/Tayo/Documents/Digital Design/Adder/two_bit_testbench_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
