`make clean sim WAVES=1 SIM=icarus`

rm -f -r sim_build
rm -f results.xml
"make" -f Makefile results.xml
make[1]: Entering directory '/mnt/sda/projects/hier_cocotb'
mkdir -p sim_build
/cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/icarus/master-gi4f7xkjdioezihobiz4ajywsdhojy5k/bin/iverilog -o sim_build/sim.vvp -D COCOTB_SIM=1 -s tb -g2012 -f sim_build/cmds.f -s cocotb_iverilog_dump  ./tb.v  sim_build/cocotb_iverilog_dump.v
rm -f results.xml
MODULE=test_dut TESTCASE= TOPLEVEL=tb TOPLEVEL_LANG=verilog \
         /cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/icarus/master-gi4f7xkjdioezihobiz4ajywsdhojy5k/bin/vvp -M /home/gomez/.venv/thor-3.12.3/lib/python3.12/site-packages/cocotb/libs -m libcocotbvpi_icarus   sim_build/sim.vvp -fst 
     -.--ns INFO     gpi                                ..mbed/gpi_embed.cpp:108  in set_program_name_in_venv        Using Python virtual environment interpreter at /home/gomez/.venv/thor-3.12.3/bin/python
     -.--ns INFO     gpi                                ../gpi/GpiCommon.cpp:101  in gpi_print_registered_impl       VPI registered
     0.00ns INFO     cocotb                             Running on Icarus Verilog version 13.0 (devel)
     0.00ns INFO     cocotb                             Running tests with cocotb v1.9.2 from /home/gomez/.venv/thor-3.12.3/lib/python3.12/site-packages/cocotb
     0.00ns INFO     cocotb                             Seeding Python random module with 1736120031
     0.00ns INFO     cocotb.regression                  Found test test_dut.test_hellow
     0.00ns INFO     cocotb.regression                  running test_hellow (1/1)
FST info: dumpfile sim_build/tb.fst opened for output.
pc0 00000005
pc1 00000006
   360.00ns INFO     cocotb.regression                  test_hellow passed
   360.00ns INFO     cocotb.regression                  **************************************************************************************
                                                        ** TEST                          STATUS  SIM TIME (ns)  REAL TIME (s)  RATIO (ns/s) **
                                                        **************************************************************************************
                                                        ** test_dut.test_hellow           PASS         360.00           0.01      68615.54  **
                                                        **************************************************************************************
                                                        ** TESTS=1 PASS=1 FAIL=0 SKIP=0                360.00           0.05       7987.95  **
`make clean sim WAVES=1 SIM=verilator`

rm -f -r sim_build
rm -f dump.vcd
rm -f dump.fst
rm -f results.xml
"make" -f Makefile results.xml
make[1]: Entering directory '/mnt/sda/projects/hier_cocotb'
mkdir -p sim_build
/cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/verilator/5.030-rpkyxfheaxqdqy7ijx5pq7pyiijnwusj/bin/verilator -cc --exe -Mdir sim_build -DCOCOTB_SIM=1 --top-module tb --timescale 1ns/1ps --vpi --public-flat-rw --prefix Vtop -o Vtop -LDFLAGS "-Wl,-rpath,/home/gomez/.venv/thor-3.12.3/lib/python3.12/site-packages/cocotb/libs -L/home/gomez/.venv/thor-3.12.3/lib/python3.12/site-packages/cocotb/libs -lcocotbvpi_verilator" --trace  --trace-fst --trace-structs ./tb.v  /home/gomez/.venv/thor-3.12.3/lib/python3.12/site-packages/cocotb/share/lib/verilator/verilator.cpp
- V e r i l a t i o n   R e p o r t: Verilator 5.030 2024-10-27 rev UNKNOWN.REV
- Verilator: Built from 0.022 MB sources in 4 modules, into 0.050 MB in 11 C++ files needing 0.000 MB
- Verilator: Walltime 0.010 s (elab=0.000, cvt=0.003, bld=0.000); cpu 0.010 s on 1 threads; alloced 20.074 MB
make -C sim_build  -f Vtop.mk
make[2]: Entering directory '/mnt/sda/projects/hier_cocotb/sim_build'
ccache /usr/bin/g++  -I.  -MMD -I/cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/verilator/5.030-rpkyxfheaxqdqy7ijx5pq7pyiijnwusj/share/verilator/include -I/cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/verilator/5.030-rpkyxfheaxqdqy7ijx5pq7pyiijnwusj/share/verilator/include/vltstd -DVM_COVERAGE=0 -DVM_SC=0 -DVM_TIMING=0 -DVM_TRACE=1 -DVM_TRACE_FST=1 -DVM_TRACE_VCD=0 -faligned-new -fcf-protection=none -Wno-bool-operation -Wno-shadow -Wno-sign-compare -Wno-tautological-compare -Wno-uninitialized -Wno-unused-but-set-parameter -Wno-unused-but-set-variable -Wno-unused-parameter -Wno-unused-variable      -Os  -c -o verilator.o /home/gomez/.venv/thor-3.12.3/lib/python3.12/site-packages/cocotb/share/lib/verilator/verilator.cpp
ccache /usr/bin/g++ -Os  -I.  -MMD -I/cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/verilator/5.030-rpkyxfheaxqdqy7ijx5pq7pyiijnwusj/share/verilator/include -I/cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/verilator/5.030-rpkyxfheaxqdqy7ijx5pq7pyiijnwusj/share/verilator/include/vltstd -DVM_COVERAGE=0 -DVM_SC=0 -DVM_TIMING=0 -DVM_TRACE=1 -DVM_TRACE_FST=1 -DVM_TRACE_VCD=0 -faligned-new -fcf-protection=none -Wno-bool-operation -Wno-shadow -Wno-sign-compare -Wno-tautological-compare -Wno-uninitialized -Wno-unused-but-set-parameter -Wno-unused-but-set-variable -Wno-unused-parameter -Wno-unused-variable      -c -o verilated.o /cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/verilator/5.030-rpkyxfheaxqdqy7ijx5pq7pyiijnwusj/share/verilator/include/verilated.cpp
ccache /usr/bin/g++ -Os  -I.  -MMD -I/cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/verilator/5.030-rpkyxfheaxqdqy7ijx5pq7pyiijnwusj/share/verilator/include -I/cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/verilator/5.030-rpkyxfheaxqdqy7ijx5pq7pyiijnwusj/share/verilator/include/vltstd -DVM_COVERAGE=0 -DVM_SC=0 -DVM_TIMING=0 -DVM_TRACE=1 -DVM_TRACE_FST=1 -DVM_TRACE_VCD=0 -faligned-new -fcf-protection=none -Wno-bool-operation -Wno-shadow -Wno-sign-compare -Wno-tautological-compare -Wno-uninitialized -Wno-unused-but-set-parameter -Wno-unused-but-set-variable -Wno-unused-parameter -Wno-unused-variable      -c -o verilated_dpi.o /cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/verilator/5.030-rpkyxfheaxqdqy7ijx5pq7pyiijnwusj/share/verilator/include/verilated_dpi.cpp
ccache /usr/bin/g++ -Os  -I.  -MMD -I/cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/verilator/5.030-rpkyxfheaxqdqy7ijx5pq7pyiijnwusj/share/verilator/include -I/cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/verilator/5.030-rpkyxfheaxqdqy7ijx5pq7pyiijnwusj/share/verilator/include/vltstd -DVM_COVERAGE=0 -DVM_SC=0 -DVM_TIMING=0 -DVM_TRACE=1 -DVM_TRACE_FST=1 -DVM_TRACE_VCD=0 -faligned-new -fcf-protection=none -Wno-bool-operation -Wno-shadow -Wno-sign-compare -Wno-tautological-compare -Wno-uninitialized -Wno-unused-but-set-parameter -Wno-unused-but-set-variable -Wno-unused-parameter -Wno-unused-variable      -c -o verilated_vpi.o /cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/verilator/5.030-rpkyxfheaxqdqy7ijx5pq7pyiijnwusj/share/verilator/include/verilated_vpi.cpp
ccache /usr/bin/g++ -Os  -I.  -MMD -I/cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/verilator/5.030-rpkyxfheaxqdqy7ijx5pq7pyiijnwusj/share/verilator/include -I/cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/verilator/5.030-rpkyxfheaxqdqy7ijx5pq7pyiijnwusj/share/verilator/include/vltstd -DVM_COVERAGE=0 -DVM_SC=0 -DVM_TIMING=0 -DVM_TRACE=1 -DVM_TRACE_FST=1 -DVM_TRACE_VCD=0 -faligned-new -fcf-protection=none -Wno-bool-operation -Wno-shadow -Wno-sign-compare -Wno-tautological-compare -Wno-uninitialized -Wno-unused-but-set-parameter -Wno-unused-but-set-variable -Wno-unused-parameter -Wno-unused-variable      -c -o verilated_fst_c.o /cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/verilator/5.030-rpkyxfheaxqdqy7ijx5pq7pyiijnwusj/share/verilator/include/verilated_fst_c.cpp
ccache /usr/bin/g++ -Os  -I.  -MMD -I/cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/verilator/5.030-rpkyxfheaxqdqy7ijx5pq7pyiijnwusj/share/verilator/include -I/cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/verilator/5.030-rpkyxfheaxqdqy7ijx5pq7pyiijnwusj/share/verilator/include/vltstd -DVM_COVERAGE=0 -DVM_SC=0 -DVM_TIMING=0 -DVM_TRACE=1 -DVM_TRACE_FST=1 -DVM_TRACE_VCD=0 -faligned-new -fcf-protection=none -Wno-bool-operation -Wno-shadow -Wno-sign-compare -Wno-tautological-compare -Wno-uninitialized -Wno-unused-but-set-parameter -Wno-unused-but-set-variable -Wno-unused-parameter -Wno-unused-variable      -c -o verilated_threads.o /cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/verilator/5.030-rpkyxfheaxqdqy7ijx5pq7pyiijnwusj/share/verilator/include/verilated_threads.cpp
python3 /cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/verilator/5.030-rpkyxfheaxqdqy7ijx5pq7pyiijnwusj/share/verilator/bin/verilator_includer -DVL_INCLUDE_OPT=include Vtop.cpp Vtop___024root__DepSet_h84412442__0.cpp Vtop___024root__DepSet_heccd7ead__0.cpp Vtop__Dpi.cpp Vtop__Trace__0.cpp Vtop___024root__Slow.cpp Vtop___024root__DepSet_h84412442__0__Slow.cpp Vtop___024root__DepSet_heccd7ead__0__Slow.cpp Vtop__Syms.cpp Vtop__Trace__0__Slow.cpp Vtop__TraceDecls__0__Slow.cpp > Vtop__ALL.cpp
ccache /usr/bin/g++ -Os  -I.  -MMD -I/cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/verilator/5.030-rpkyxfheaxqdqy7ijx5pq7pyiijnwusj/share/verilator/include -I/cadtools/linux-ubuntu22.04-skylake/spack/opt/linux-ubuntu24.04-skylake/gcc-13.2.0/verilator/5.030-rpkyxfheaxqdqy7ijx5pq7pyiijnwusj/share/verilator/include/vltstd -DVM_COVERAGE=0 -DVM_SC=0 -DVM_TIMING=0 -DVM_TRACE=1 -DVM_TRACE_FST=1 -DVM_TRACE_VCD=0 -faligned-new -fcf-protection=none -Wno-bool-operation -Wno-shadow -Wno-sign-compare -Wno-tautological-compare -Wno-uninitialized -Wno-unused-but-set-parameter -Wno-unused-but-set-variable -Wno-unused-parameter -Wno-unused-variable      -c -o Vtop__ALL.o Vtop__ALL.cpp
echo "" > Vtop__ALL.verilator_deplist.tmp
/usr/bin/g++    verilator.o verilated.o verilated_dpi.o verilated_vpi.o verilated_fst_c.o verilated_threads.o Vtop__ALL.a   -Wl,-rpath,/home/gomez/.venv/thor-3.12.3/lib/python3.12/site-packages/cocotb/libs -L/home/gomez/.venv/thor-3.12.3/lib/python3.12/site-packages/cocotb/libs -lcocotbvpi_verilator -lz  -pthread -lpthread -latomic   -o Vtop
rm Vtop__ALL.verilator_deplist.tmp
make[2]: Leaving directory '/mnt/sda/projects/hier_cocotb/sim_build'
rm -f results.xml
MODULE=test_dut TESTCASE= TOPLEVEL=tb TOPLEVEL_LANG=verilog \
         sim_build/Vtop  --trace  --trace-fst --trace-structs  
     -.--ns INFO     gpi                                ..mbed/gpi_embed.cpp:108  in set_program_name_in_venv        Using Python virtual environment interpreter at /home/gomez/.venv/thor-3.12.3/bin/python
     -.--ns INFO     gpi                                ../gpi/GpiCommon.cpp:101  in gpi_print_registered_impl       VPI registered
     0.00ns INFO     cocotb                             Running on Verilator version 5.030 2024-10-27
     0.00ns INFO     cocotb                             Running tests with cocotb v1.9.2 from /home/gomez/.venv/thor-3.12.3/lib/python3.12/site-packages/cocotb
     0.00ns INFO     cocotb                             Seeding Python random module with 1736119998
     0.00ns INFO     cocotb.regression                  Found test test_dut.test_hellow
     0.00ns INFO     cocotb.regression                  running test_hellow (1/1)
     0.00ns INFO     cocotb.regression                  test_hellow failed
                                                        Traceback (most recent call last):
                                                          File "/mnt/sda/projects/hier_cocotb/test_dut.py", line 32, in test_hellow
                                                            tb = testbench(dut)
                                                                 ^^^^^^^^^^^^^^
                                                          File "/mnt/sda/projects/hier_cocotb/test_dut.py", line 28, in __init__
                                                            self.pc1 = dut.i_counter1.g_x01.i_counter0.f_pc
                                                                       ^^^^^^^^^^^^^^^^^^^^
                                                          File "/home/gomez/.venv/thor-3.12.3/lib/python3.12/site-packages/cocotb/handle.py", line 370, in __getattr__
                                                            raise AttributeError(f"{self._name} contains no object named {name}")
                                                        AttributeError: i_counter1 contains no object named g_x01
     0.00ns INFO     cocotb.regression                  **************************************************************************************
                                                        ** TEST                          STATUS  SIM TIME (ns)  REAL TIME (s)  RATIO (ns/s) **
                                                        **************************************************************************************
                                                        ** test_dut.test_hellow           FAIL           0.00           0.00          1.19  **
                                                        **************************************************************************************
                                                        ** TESTS=1 PASS=0 FAIL=1 SKIP=0                  0.00           0.04          0.02  **
                                                        **************************************************************************************
                                                   **************************************************************************************


