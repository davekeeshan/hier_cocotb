from cocotb import test
from cocotb.clock import Clock
from cocotb import start_soon
from cocotb.triggers import RisingEdge, Timer


class Clk:
    def __init__(
        self, dut, clkname: str = "clk"
    ) -> None:
        self.clk = getattr(dut, clkname)
        start_soon(Clock(self.clk, 10, units='ns').start())

    async def wait_clkn(self, length: int = 1) -> None:
        for i in range(int(length)):
            await RisingEdge(self.clk)


class testbench:
    def __init__(self, dut):
        
        self.clk = Clk(dut, clkname="clkin")
        self.rst = dut.rst
        
        self.rst.value = 0
        
        self.pc0 = dut.i_counter0.f_pc
        self.pc1 = dut.i_counter1.g_x01.i_counter0.f_pc

@test()
async def test_hellow(dut):
    tb = testbench(dut)
    await tb.clk.wait_clkn(5)
    tb.rst.value = 1
    await tb.clk.wait_clkn(5)
    tb.rst.value = 0
    await tb.clk.wait_clkn(5)
    print(f"pc0 {int(tb.pc0.value):08x}")
    await tb.clk.wait_clkn(1)
    print(f"pc1 {int(tb.pc1.value):08x}")
    await tb.clk.wait_clkn(1)
    
    await tb.clk.wait_clkn(20)
