# $NetBSD$

BUILDLINK_TREE+=	mono-zeroconf

.if !defined(MONO_ZEROCONF_BUILDLINK3_MK)
MONO_ZEROCONF_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mono-zeroconf+=	mono-zeroconf>=0.8.0
BUILDLINK_ABI_DEPENDS.mono-zeroconf?=	mono-zeroconf>=0.9.0nb1
BUILDLINK_PKGSRCDIR.mono-zeroconf?=	../../wip/mono-zeroconf


.include "../../lang/mono/buildlink3.mk"
.endif	# MONO_ZEROCONF_BUILDLINK3_MK

BUILDLINK_TREE+=	-mono-zeroconf
