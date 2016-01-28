# $NetBSD: buildlink3.mk,v 1.57 2015/07/11 17:16:18 wiz Exp $

BUILDLINK_TREE+=	evolution-data-server

.if !defined(EVOLUTION_DATA_SERVER_BUILDLINK3_MK)
EVOLUTION_DATA_SERVER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.evolution-data-server+=	evolution-data-server>=1.8.0
BUILDLINK_ABI_DEPENDS.evolution-data-server+=	evolution-data-server>=2.32.3nb34
BUILDLINK_PKGSRCDIR.evolution-data-server?=	../../mail/evolution-data-server

BDB_ACCEPTED?=		db4 db5
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../devel/GConf/buildlink3.mk"
.include "../../devel/nss/buildlink3.mk"
.include "../../net/libsoup/buildlink3.mk"
.include "../../net/ORBit2/buildlink3.mk"
.include "../../net/libgdata0.6/buildlink3.mk"
.include "../../time/libical/buildlink3.mk"
.include "../../security/libgnome-keyring/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bdb.buildlink3.mk"
.endif # EVOLUTION_DATA_SERVER_BUILDLINK3_MK

BUILDLINK_TREE+=	-evolution-data-server
