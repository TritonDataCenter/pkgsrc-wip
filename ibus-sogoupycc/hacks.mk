# $NetBSD$

.if !defined(IBUS_SOGOUPYCC_HACK_MK)
IBUS_SOGOUPYCC_HACK_MK=	# empty

# XXX dumped
BUILDLINK_TRANSFORM+=	rm:-O[1-9]*

.endif
