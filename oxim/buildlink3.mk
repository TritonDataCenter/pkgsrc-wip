# $NetBSD$
#

BUILDLINK_TREE+=	oxim

.if !defined(OXIM_BUILDLINK3_MK)
OXIM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.oxim+=	oxim>=1.4.0
BUILDLINK_PKGSRCDIR.oxim?=	../../wip/oxim

.include "../../devel/gettext-lib/buildlink3.mk"

.endif	# OXIM_BUILDLINK3_MK

BUILDLINK_TREE+=	-oxim
