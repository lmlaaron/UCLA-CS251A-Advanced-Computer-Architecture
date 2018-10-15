import m5
from m5.objects import *
from cache import *
import argparse
# from optparse import OptionParser

parser = argparse.ArgumentParser()
parser.add_argument('--l1i_size', action="store", dest="l1i_size", help = "L1 instruction cache size")
parser.add_argument('--l1d_size', action="store", dest="l1d_size", help = "L1 data cache size")
parser.add_argument('--l2_size', action="store", dest="l2_size", help = "Unified L2 cache size")
parser.add_argument('--cpu_type', action="store", dest="cpu_type", help = "Type of cpu to run with")
parser.add_argument('--frequency', action="store", dest="frequency", help = "Frequency of the system")
parser.add_argument('--mem_type', action="store", dest="mem_type", help = "type of memory to use")
parser.add_argument('--disable_l2', action="store_true", dest="disable_l2", help = "disable l2 cache")
parser.add_argument('--cmd', action="store", dest="cmd", help = "executable to use")
args = parser.parse_args()
print(args)

# parser = OptionParser()
# parser.add_option('--l1i_size', help="L1 instruction cache size")
# parser.add_option('--l1d_size', help="L1 data cache size")
# parser.add_option('--l2_size', help="Unified L2 cache size")
# (options, args) = parser.parse_args()

# System going to simulate
system = System()       

# Set the clock of the system
system.clk_domain = SrcClockDomain()                # Create a clock domain
system.clk_domain.clock = '1GHz'                    # Freq
if args.frequency:
    system.clk_domain.clock = args.frequency

system.clk_domain.voltage_domain = VoltageDomain()  # Don't care, use default

# Set up memory
system.mem_mode = 'timing'                  # Use timing mode for memory sim
system.mem_ranges = [AddrRange('512MB')]    # Single memory range of 512MB

# Set up CPU
system.cpu = DerivO3CPU()  # Timing-based CPU
if args.cpu_type == "MinorCPU":
    system.cpu = MinorCPU()

# System-wide memory bus
system.membus = SystemXBar()

# Create L1 cache
system.cpu.icache = L1ICache(args)          # Create L1I cache
system.cpu.dcache = L1DCache(args)          # Create L1D cache
system.cpu.icache.connectCPU(system.cpu)    # Connect L1 cache to CPU
system.cpu.dcache.connectCPU(system.cpu)  

if args.disable_l2:
    system.cpu.icache.connectBus(system.membus)
    system.cpu.dcache.connectBus(system.membus)
else:
    # Create L2 bus, because L2 only expects a single port to connect to it
    system.l2bus = L2XBar()
    system.cpu.icache.connectBus(system.l2bus)  
    system.cpu.dcache.connectBus(system.l2bus)
    system.l2cache = L2Cache(args)      # Create L2 cache
    system.l2cache.connectCPUSideBus(system.l2bus)
    system.l2cache.connectMemSideBus(system.membus)


# Connect other ports
system.cpu.createInterruptController()
system.cpu.interrupts[0].pio = system.membus.master         # I/O controller
system.cpu.interrupts[0].int_master = system.membus.slave
system.cpu.interrupts[0].int_slave = system.membus.master

system.system_port = system.membus.slave

system.mem_ctrl = DDR3_1600_8x8()
if args.mem_type == 'HBM_1000_4H_1x64':
    system.mem_ctrl = HBM_1000_4H_1x64()
system.mem_ctrl.range = system.mem_ranges[0]
system.mem_ctrl.port = system.membus.master

# Set up process to execute
process = Process()                                             # Create process
if not args.cmd:
    process.cmd = ['tests/test-progs/hello/bin/x86/linux/hello']    # Compiled file
else:
    process.cmd = [args.cmd]
system.cpu.workload = process
system.cpu.createThreads()

# Instantiate the system and being execution
root = Root(full_system = False, system = system)
m5.instantiate()

print("Beginning simulation!")
exit_event = m5.simulate()
print('Exiting @ tick {} because {}'
      .format(m5.curTick(), exit_event.getCause()))