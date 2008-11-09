# $NetBSD$

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
MYSQL_EMBEDDED_BUILDLINK3_MK:=	${MYSQL_EMBEDDED_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	mysql-embedded
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nmysql-embedded}
BUILDLINK_PACKAGES+=	mysql-embedded
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}mysql-embedded

.if ${MYSQL_EMBEDDED_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.mysql-embedded+=	mysql-embedded>=5.0.67
BUILDLINK_PKGSRCDIR.mysql-embedded?=	../../wip/mysql5-embedded
.endif	# MYSQL_EMBEDDED_BUILDLINK3_MK

.include "../../databases/mysql5-client/buildlink3.mk"
.include "../../security/tcp_wrappers/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
