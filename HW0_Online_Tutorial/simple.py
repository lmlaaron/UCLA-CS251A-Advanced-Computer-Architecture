import m5
from m5.objects import *

# System going to simulate
system = System()       

# Set the clock of the system
system.clk_domain = SrcClockDomain()                # Create a clock domain
system.clk_domain.clock = '1GHz'                    # Freq
system.clk_domain.voltage_domain = VoltageDomain()  # Don't care, use default

# Set up memory
system.mem_mode = 'timing'                  # Use timing mode for memory sim
system.mem_ranges = [AddrRange('512MB')]    # Single memory range of 512MB

# Set up CPU
system.cpu = TimingSimpleCPU()  # Timing-based CPU

# System-wide memory bus
system.membus = SystemXBar()                    # Create bus
system.cpu.icache_port = system.membus.slave    # No cache, connect to membus
system.cpu.dcache_port = system.membus.slave    # No cache, connect to membus

# Connect other ports
system.cpu.createInterruptController()
system.cpu.interrupts[0].pio = system.membus.master         # I/O controller
system.cpu.interrupts[0].int_master = system.membus.slave
system.cpu.interrupts[0].int_slave = system.membus.master

system.system_port = system.membus.slave

system.mem_ctrl = DDR3_1600_8x8()
system.mem_ctrl.range = system.mem_ranges[0]
system.mem_ctrl.port = system.membus.master

# Set up process to execute
process = Process()                                             # Create process
process.cmd = ['tests/test-progs/hello/bin/x86/linux/hello']    # Compiled file
system.cpu.workload = process
system.cpu.createThreads()

# Instantiate the system and being execution
root = Root(full_system = False, system = system)
m5.instantiate()

print("Beginning simulation!")
exit_event = m5.simulate()
print('Exiting @ tick {} because {}'
      .format(m5.curTick(), exit_event.getCause()))