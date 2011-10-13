# $NetBSD$

BUILDLINK_TREE+=	dee

.if !defined(DEE_BUILDLINK3_MK)
DEE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.dee+=	dee>=0.5.22
BUILDLINK_PKGSRCDIR.dee?=	../../wip/dee

.include "../../devel/glib2/buildlink3.mk"
.endif	# DEE_BUILDLINK3_MK

BUILDLINK_TREE+=	-dee
