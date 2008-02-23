# $NetBSD$

PKG_OPTIONS_VAR=		PKG_OPTIONS.dvtm
PKG_OPTIONS_REQUIRED_GROUPS=	curses
PKG_OPTIONS_GROUP.curses=	ncurses ncursesw
PKG_SUGGESTED_OPTIONS=		ncursesw

.include "../../mk/bsd.options.mk"


# Option-handling

##
## Curses lib to use
##
.if !empty(PKG_OPTIONS:Mncurses)
.include "../../devel/ncurses/buildlink3.mk"
USE_NCURSES=	yes	# mouse extensions (not X/Open Curses compliant)
.endif

.if !empty(PKG_OPTIONS:Mncursesw)
.include "../../devel/ncursesw/buildlink3.mk"
MAKE_FLAGS+=	unicode
.endif
