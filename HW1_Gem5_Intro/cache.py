import m5
from m5.objects import *

class L1Cache(Cache):
    assoc = 2
    tag_latency = 2
    data_latency = 2
    response_latency = 2
    mshrs = 4
    tgts_per_mshr = 20
    def connectCPU(self, cpu):
        # need to define this in a derived class!
        raise NotImplementedError
    def connectBus(self, bus):
        self.mem_side = bus.slave
    def __init__(self):
        super(L1Cache, self).__init__()
        pass


class L1ICache(L1Cache):
    size = '64kB'
    def connectCPU(self, cpu):
        self.cpu_side = cpu.icache_port
    def __init__(self, args = None):
        super(L1ICache, self).__init__()
        if not args.l1i_size:
            return
        L1ICache.size = args.l1i_size

class L1DCache(L1Cache):
    size = '64kB'
    def connectCPU(self, cpu):
        self.cpu_side = cpu.dcache_port
    def __init__(self, args = None):
        super(L1DCache, self).__init__()
        if not args.l1d_size:
            return
        L1DCache.size = args.l1d_size

class L2Cache(Cache):
    size = '2MB'
    assoc = 8
    tag_latency = 20
    data_latency = 20
    response_latency = 20
    mshrs = 20
    tgts_per_mshr = 12
    def connectCPUSideBus(self, bus):
        self.cpu_side = bus.master
    def connectMemSideBus(self, bus):
        self.mem_side = bus.slave
    def __init__(self, args):
        super(L2Cache, self).__init__()
        if not args.l2_size:
            return
        L2Cache.size = args.l2_size