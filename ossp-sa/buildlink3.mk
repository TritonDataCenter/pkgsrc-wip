# $NetBSD$
#

BUILDLINK_TREE+=	ossp-sa

.if !defined(OSSP_SA_BUILDLINK3_MK)
OSSP_SA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ossp-sa+=	ossp-sa>=1.2.6
BUILDLINK_PKGSRCDIR.ossp-sa?=	../../wip/ossp-sa

#.include "../../wip/ossp-ex/buildlink3.mk"
.endif	# OSSP_SA_BUILDLINK3_MK

BUILDLINK_TREE+=	-ossp-sa
