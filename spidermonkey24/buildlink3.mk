# $NetBSD$

BUILDLINK_TREE+=	spidermonkey24

.if !defined(SPIDERMONKEY24_BUILDLINK3_MK)
SPIDERMONKEY24_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.spidermonkey24+=	spidermonkey24>=1.0.0
BUILDLINK_PKGSRCDIR.spidermonkey24?=	../../wip/spidermonkey24

.include "../../devel/nspr/buildlink3.mk"
.endif	# SPIDERMONKEY24_BUILDLINK3_MK

BUILDLINK_TREE+=	-spidermonkey24
