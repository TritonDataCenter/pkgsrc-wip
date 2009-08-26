# $NetBSD: options.mk,v 1.2 2008/04/12 22:43:00 jlam Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.kmymoney2
PKG_SUPPORTED_OPTIONS=	libofx #sqlite3
PKG_SUGGESTED_OPTIONS=	libofx #sqlite3

.include "../../mk/bsd.options.mk"

PLIST_VARS+=		libofx #sqlite3

.if !empty(PKG_OPTIONS:Mlibofx)
.include "../../finance/libofx/buildlink3.mk"
PLIST.libofx=		yes
.endif

#.if !empty(PKG_OPTIONS:Msqlite3)
#.include "../../databases/sqlite3/buildlink3.mk"
#PLIST.sqlite3=		yes
#.endif
