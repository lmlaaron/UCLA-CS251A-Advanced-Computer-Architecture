/**
 * @file
 * Definitions of a NMRU tag store.
 */

#include "mem/cache/tags/nmru.hh"

#include "base/random.hh"
#include "debug/CacheRepl.hh"
#include "mem/cache/base.hh"

NMRU::NMRU(const Params *p)
    : BaseSetAssoc(p)
{
}

NMRU::BlkType*
NMRU::accessBlock(Addr addr, bool is_secure, Cycles &lat) // , int master_id)
{
    // Accesses are based on parent class, no need to do anything special
    BlkType *blk = BaseSetAssoc::accessBlock(addr, is_secure, lat);

    if (blk != NULL) {
        // move this block to head of the MRU list
		indexingPolicy->moveToHead(blk);
    }

    return blk;
}

NMRU::BlkType*
NMRU::findVictim(Addr addr, const bool is_secure,
                         std::vector<BlkType*>& evict_blks) const
{
    const std::vector<ReplaceableEntry*> entries =
        indexingPolicy->getPossibleEntries(addr);
    BlkType *blk;
    for (const auto& entry : entries) {
        blk = static_cast<BlkType*>(entry);
        if (!(blk -> isValid())) {
            evict_blks.push_back(blk);
            return blk;
        }
    }
    // if all blocks are valid, pick a replacement that is not MRU at random
    // find a random index within the bounds of the set 
    int idx = random_mt.random<int>(1, allocAssoc - 1); 
    assert(idx < allocAssoc); 
    assert(idx >= 0); 
    blk = static_cast<BlkType*>(entries[idx]); 
    evict_blks.push_back(blk);
    return blk;
}

void 
NMRU::insertBlock(const Addr addr, const bool is_secure,
                     const int src_master_ID, const uint32_t task_ID,
                     BlkType *blk)
{
    BaseSetAssoc::insertBlock(addr, is_secure, src_master_ID, task_ID, blk);
	indexingPolicy->moveToHead(blk);
}

void
NMRU::invalidate(BlkType *blk)
{
    BaseSetAssoc::invalidate(blk);
    indexingPolicy->moveToTail(blk);
}

NMRU*
NMRUParams::create()
{
    return new NMRU(this);
}