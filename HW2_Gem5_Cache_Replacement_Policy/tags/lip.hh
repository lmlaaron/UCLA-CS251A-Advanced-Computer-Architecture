/** 
 * @file
 * LIP (LRU-Insertion Policy) replacement policy.
 */

#ifndef __MEM_CACHE_TAGS_LIP_HH__
#define __MEM_CACHE_TAGS_LIP_HH__

#include "base/bitfield.hh"
#include "base/intmath.hh"
#include "base/logging.hh"
#include "base/statistics.hh"
#include "base/types.hh"
#include "mem/cache/cache_blk.hh"

#include "mem/cache/tags/base_set_assoc.hh"
#include "params/LIP.hh"

class LIP : public BaseSetAssoc
{
    public:

    /** Typedef the block type used in this class. */
    typedef CacheBlk BlkType;

    /** Convenience typedef. */
    typedef LIPParams Params;

    /**
     * Construct and initialize LIP tag store.
     */
    LIP(const Params *p);

    /**
     * Destructor
     */
    ~LIP() {};

    /**
     * Required functions for this subclass to implement
     */
    BlkType* accessBlock(Addr addr, bool is_secure, Cycles &lat) override;
    
    BlkType* findVictim(Addr addr, const bool is_secure,
                            std::vector<BlkType*>& evict_blks) const override;
    
    void insertBlock(const Addr addr, const bool is_secure,
                        const int src_master_ID, const uint32_t task_ID,
                        BlkType *blk) override;
    
    void invalidate(BlkType *blk) override;
};

#endif // __MEM_CACHE_TAGS_LIP_HH__