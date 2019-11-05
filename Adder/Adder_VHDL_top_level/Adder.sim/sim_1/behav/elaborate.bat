@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 2f9ee84419824e45b51f6ecf43e51079 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip -L xpm --snapshot two_bit_testbench_behav xil_defaultlib.two_bit_testbench -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
