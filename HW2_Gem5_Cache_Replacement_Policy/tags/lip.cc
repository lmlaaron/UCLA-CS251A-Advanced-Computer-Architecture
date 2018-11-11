/**
 * @file
 * Definitions of a LIP tag store.
 */

#include "mem/cache/tags/lip.hh"

#include "base/random.hh"
#include "debug/CacheRepl.hh"
#include "mem/cache/base.hh"

LIP::LIP(const Params *p)
    : BaseSetAssoc(p)
{
}

LIP::BlkType*
LIP::accessBlock(Addr addr, bool is_secure, Cycles &lat)
{

    BlkType *blk = BaseSetAssoc::accessBlock(addr, is_secure, lat);

    if (blk != NULL) {
        /* move this block to head of the MRU list */
		indexingPolicy->moveToHead(blk);
    }

    return blk;
}

LIP::BlkType*
LIP::findVictim(Addr addr, bool is_secure,
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
    // if all blocks are valid, return the tail block 
    int idx = allocAssoc - 1; 
    blk = static_cast<BlkType*>(entries[idx]); 
    evict_blks.push_back(blk);
    return blk;
}

void
LIP::insertBlock(const Addr addr, const bool is_secure,
                const int src_master_ID, const uint32_t task_ID,
                BlkType *blk)
{
    BaseSetAssoc::insertBlock(addr, is_secure, src_master_ID, task_ID, blk);
    indexingPolicy -> moveToTail(blk);
}

void LIP::invalidate(BlkType *blk)
{
    BaseSetAssoc::invalidate(blk);
    indexingPolicy->moveToTail(blk);
}

LIP*
LIPParams::create()
{
    return new LIP(this);
}