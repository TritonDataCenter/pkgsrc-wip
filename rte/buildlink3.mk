# $NetBSD$

BUILDLINK_TREE+=	rte

BUILDLINK_API_DEPENDS.rte+=		rte>=0.5.6
BUILDLINK_PKGSRCDIR.rte?=	../../wip/rte

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.endif # RTE_BUILDLINK3_MK

BUILDLINK_TREE+=	-rte
