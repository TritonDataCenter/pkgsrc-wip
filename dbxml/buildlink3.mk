# $NetBSD$
#
# This Makefile fragment is included by packages that use dbxml.
#

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
DBXML_BUILDLINK3_MK:=	${DBXML_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	dbxml
.endif

.if !empty(DBXML_BUILDLINK3_MK:M+)
BUILDLINK_PACKAGES+=			dbxml
BUILDLINK_DEPENDS.dbxml+=		dbxml>=1.2.0
BUILDLINK_PKGSRCDIR.dbxml?=		../../wip/dbxml

.include "../../databases/db4/buildlink3.mk"
.include "../../textproc/libpathan/buildlink3.mk"
.include "../../textproc/xerces-c/buildlink3.mk"

.endif # DBXML_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
