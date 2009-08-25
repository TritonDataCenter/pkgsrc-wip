# $NetBSD$

BUILDLINK_TREE+=	mysql-embedded

.if !defined(MYSQL_EMBEDDED_BUILDLINK3_MK)
MYSQL_EMBEDDED_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mysql-embedded+=	mysql-embedded>=5.1.36
BUILDLINK_PKGSRCDIR.mysql-embedded?=	../../wip/mysql5-embedded

_BLNK_PASSTHRU_DIRS+=		${LOCALBASE}/mysqld/lib
.endif # MYSQL_EMBEDDED_BUILDLINK3_MK

BUILDLINK_TREE+=	-mysql-embedded
