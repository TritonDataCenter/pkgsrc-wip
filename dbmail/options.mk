# $NetBSD: options.mk,v 1.9 2010/01/23 04:45:20 obache Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.dbmail
PKG_SUPPORTED_OPTIONS=	sieve
PKG_SUGGESTED_OPTIONS=	sieve

.include "../../mk/bsd.options.mk"

PLIST_VARS+=		sieve

###
### Sieve support
###
.if !empty(PKG_OPTIONS:Msieve)
.include "../../mail/libsieve/buildlink3.mk"
CONFIGURE_ARGS+=	--with-sieve=${BUILDLINK_PREFIX.libsieve}
PLIST.sieve=		yes
FILES_SUBST+=		TIMSIEVED="dbmailtimsieved"
RCD_SCRIPTS+=		dbmailtimsieved
.else
CONFIGURE_ARGS+=	--without-sieve
FILES_SUBST+=		TIMSIEVED=""
.endif
