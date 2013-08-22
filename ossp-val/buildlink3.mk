# $NetBSD$
#

BUILDLINK_TREE+=	ossp-val

.if !defined(OSSP_VAL_BUILDLINK3_MK)
OSSP_VAL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ossp-val+=	ossp-val>=0.9.4
BUILDLINK_PKGSRCDIR.ossp-val?=	../../wip/ossp-val

#.include "../../wip/ossp-ex/buildlink3.mk"
#.include "../../devel/dmalloc/buildlink3.mk"
.endif	# OSSP_VAL_BUILDLINK3_MK

BUILDLINK_TREE+=	-ossp-val
