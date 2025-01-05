SIM?=icarus
TOPLEVEL_LANG=verilog

TOPLEVEL = tb
MODULE = test_dut

VERILOG_SOURCES += \
    ./tb.v 

include $(shell cocotb-config --makefiles)/Makefile.sim
