/* -----------------------------------------------------------------------------
 * $Id: StgLongLong.c,v 1.3 1999/02/05 16:02:58 simonm Exp $
 *
 * (c) The GHC Team, 1998-1999
 *
 * Primitive operations over (64-bit) long longs
 * (only used on 32-bit platforms.)
 *
 * ---------------------------------------------------------------------------*/


/*
Miscellaneous primitive operations on StgInt64 and StgNat64s.

Instead of going the normal (boring) route of making the list
of primitive operations even longer to cope with operations
over 64-bit entities, we implement them instead 'out-of-line'.

The primitive ops get their own routine (in C) that implements
the operation, requiring the caller to _ccall_ out. This has
performance implications of course, but we currently don't
expect intensive use of either Int64 or Word64 types.

The exceptions to the rule are primops that cast to and from
64-bit entities (these are defined in PrimOps.h)

NOTE: We prefix all these primops with "stg_". No particular
reason why.
*/

#include "Rts.h"

#ifdef SUPPORT_LONG_LONGS
StgInt
stg_gtWord64(StgNat64 l1, StgNat64 l2)
{ return ( l1 > l2); }

StgInt
stg_geWord64(StgNat64 l1, StgNat64 l2)
{ return ( l1 >= l2); }

StgInt
stg_eqWord64(StgNat64 l1, StgNat64 l2)
{ return ( l1 == l2); }

StgInt
stg_neWord64(StgNat64 l1, StgNat64 l2)
{ return ( l1 != l2); }

StgInt
stg_ltWord64(StgNat64 l1, StgNat64 l2)
{ return ( l1 < l2); }

StgInt
stg_leWord64(StgNat64 l1, StgNat64 l2)
{ return ( l1 <= l2); }

/* ------------------ */

StgInt
stg_gtInt64(StgInt64 l1, StgInt64 l2)
{ return ( l1 > l2); }

StgInt
stg_geInt64(StgInt64 l1, StgInt64 l2)
{ return ( l1 >= l2); }

StgInt
stg_eqInt64(StgInt64 l1, StgInt64 l2)
{ return ( l1 == l2); }

StgInt
stg_neInt64(StgInt64 l1, StgInt64 l2)
{ return ( l1 != l2); }

StgInt
stg_ltInt64(StgInt64 l1, StgInt64 l2)
{ return ( l1 < l2); }

StgInt
stg_leInt64(StgInt64 l1, StgInt64 l2)
{ return ( l1 <= l2); }

/* Arithmetic operators */

StgNat64
stg_remWord64(StgNat64 a, StgNat64 b)
{ return (a%b); }

StgNat64
stg_quotWord64(StgNat64 a, StgNat64 b)
{ return (a/b); }

StgInt64
stg_remInt64(StgInt64 a, StgInt64 b)
{ return (a%b); }

StgInt64
stg_quotInt64(StgInt64 a, StgInt64 b)
{ return (a/b); }

StgInt64
stg_negateInt64(StgInt64 a)
{ return (-a); }

StgInt64
stg_plusInt64(StgInt64 a, StgInt64 b)
{ return (a+b); }

StgInt64
stg_minusInt64(StgInt64 a, StgInt64 b)
{ return (a-b); }

StgInt64
stg_timesInt64(StgInt64 a, StgInt64 b)
{ return (a*b); }

/* Logical operators: */

StgNat64
stg_and64(StgNat64 a, StgNat64 b)
{ return (a&b); }

StgNat64
stg_or64(StgNat64 a, StgNat64 b)
{ return (a|b); }

StgNat64
stg_xor64(StgNat64 a, StgNat64 b)
{ return (a^b); }

StgNat64
stg_not64(StgNat64 a)
{ return (~a); }

StgNat64
stg_shiftL64(StgNat64 a, StgInt b)
{ return (a << b); }

StgNat64
stg_shiftRL64(StgNat64 a, StgInt b)
{ return (a >> b); }

StgInt64
stg_iShiftL64(StgInt64 a, StgInt b)
{ return ( a<<b ); }

/* Right shifting of signed quantities is not portable in C, so
   the behaviour you'll get from using these primops depends
   on the whatever your C compiler is doing. ToDo: fix. -- sof 8/98
*/

StgInt64
stg_iShiftRA64(StgInt64 a, StgInt b)
{ return ( a>>b ); }

StgInt64
stg_iShiftRL64(StgInt64 a, StgInt b)
{ return ( a>>b ); }

/*
Casting between longs and longer longs:
(the primops that cast from to/from Integers and long longs are
expressed as macros, since these may cause some heap allocation).
*/

StgInt64
stg_intToInt64(StgInt i)
{ return ( (StgInt64)i ); }

StgInt
stg_int64ToInt(StgInt64 i)
{ return ( (StgInt)i ); }

StgNat64
stg_int64ToWord64(StgInt64 i)
{ return ( (StgNat64)i ); }

StgNat64
stg_wordToWord64(StgWord w)
{ return ( (StgNat64)w ); }

StgWord
stg_word64ToWord(StgNat64 w)
{ return ( (StgWord)w ); }

StgInt64
stg_word64ToInt64(StgNat64 w)
{ return ( (StgInt64)w ); }

#endif /* SUPPORT_LONG_LONGS */
