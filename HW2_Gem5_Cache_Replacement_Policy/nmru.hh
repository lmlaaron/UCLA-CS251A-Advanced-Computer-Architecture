#ifndef __MEM_CACHE_TAGS_NMRU_HH__
#define __MEM_CACHE_TAGS_NMRU_HH__

#include "base/bitfield.hh"
#include "base/intmath.hh"
#include "base/logging.hh"
#include "base/statistics.hh"
#include "base/types.hh"
#include "mem/cache/cache_blk.hh"

#include "mem/cache/tags/base_set_assoc.hh"
#include "params/NMRU.hh"

class NMRU : public BaseSetAssoc
{
  public:

  /** Typedef the block type used in this class. */
  typedef CacheBlk BlkType;

  /** Convenience typedef. */
  typedef NMRUParams Params;

  /**
   * Construct and initialize this tag store.
   **/
  NMRU(const Params *p);

  /**
   * Destructor
   **/
  ~NMRU() {}

  /**
   * Required functions for this subclass to implement
   **/
  BlkType* accessBlock(Addr addr, bool is_secure, Cycles &lat);
  BlkType* findVictim(Addr addr, const bool is_secure,
                          std::vector<BlkType*>& evict_blks) const;
  void insertBlock(const Addr addr, const bool is_secure,
                     const int src_master_ID, const uint32_t task_ID,
                     BlkType *blk);
  void invalidate(BlkType *blk);
};

#endif // __MEM_CACHE_TAGS_NMRU_HH__