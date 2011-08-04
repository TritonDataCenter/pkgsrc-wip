# $NetBSD$

BUILDLINK_TREE+=	spidermonkey185

.if !defined(SPIDERMONKEY185_BUILDLINK3_MK)
SPIDERMONKEY185_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.spidermonkey185+=	spidermonkey185>=1.0.0
BUILDLINK_PKGSRCDIR.spidermonkey185?=	../../wip/spidermonkey185

.include "../../devel/nspr/buildlink3.mk"
.endif	# SPIDERMONKEY185_BUILDLINK3_MK

BUILDLINK_TREE+=	-spidermonkey185
