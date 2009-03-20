# $NetBSD$

BUILDLINK_TREE+=	hs-html

.if !defined(HS_HTML_BUILDLINK3_MK)
HS_HTML_BUILDLINK3_MK:=

BUILDLINK_DEPMETHOD.hs-html?=	build
BUILDLINK_API_DEPENDS.hs-html+=	hs-html>=1.0.1.2
BUILDLINK_PKGSRCDIR.hs-html?=	../../wip/hs-html
.endif # HS_HTML_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-html
