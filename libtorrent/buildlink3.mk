# $NetBSD$

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBTORRENT_BUILDLINK3_MK:=	${LIBTORRENT_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libtorrent
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibtorrent}
BUILDLINK_PACKAGES+=	libtorrent

.if !empty(LIBTORRENT_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libtorrent+=	libtorrent>=0.5.4
BUILDLINK_PKGSRCDIR.libtorrent?=	../../wip/libtorrent
.endif	# LIBTORRENT_BUILDLINK3_MK

.include "../../security/openssl/buildlink3.mk"
.include "../../devel/libsigc++2/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
