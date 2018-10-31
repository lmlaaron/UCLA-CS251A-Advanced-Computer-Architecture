#ifndef __MEM_CACHE_TAGS_NMRU_HH__
#define __MEM_CACHE_TAGS_NMRU_HH__

#include "mem/cache/tags/base_set_assoc.hh"
#include "params/NMRU.hh"

class NMRU : public BaseSetAssoc
{
public:
/** Convenience typedef. */
typedef NMRUParams Params;

  /**
   *      * Construct and initialize this tag store.
   *           */
  NMRU(const Params *p);

  /**
   *      * Destructor
   *           */
  ~NMRU() {}

  /**
   *      * Required functions for this subclass to
   *      implement
   *           */
  BlkType* accessBlock(Addr addr, bool is_secure, Cycles &lat);
  BlkType* findVictim(Addr addr, const bool is_secure,
                         std::vector<CacheBlk*>& evict_blks) const;
  void insertBlock(PacketPtr pkt, BlkType *blk);
  void invalidate(BlkType *blk);
};

#endif // __MEM_CACHE_TAGS_NMRU_HH__
