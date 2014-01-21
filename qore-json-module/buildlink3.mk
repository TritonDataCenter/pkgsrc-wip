# $NetBSD$

BUILDLINK_TREE+=	qore-json-module

.if !defined(QORE_JSON_MODULE_BUILDLINK3_MK)
QORE_JSON_MODULE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qore-json-module+=	qore-json-module>=1.4
BUILDLINK_PKGSRCDIR.qore-json-module?=	../../wip/qore-json-module

.include "../../wip/qore/buildlink3.mk"
.endif	# QORE_JSON_MODULE_BUILDLINK3_MK

BUILDLINK_TREE+=	-qore-json-module
