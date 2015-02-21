# $NetBSD$

PKG_OPTIONS_VAR=		PKG_OPTIONS.libtermkey
PKG_OPTIONS_OPTIONAL_GROUPS=    terminfo
PKG_OPTIONS_GROUP.terminfo=	ncurses unibilium
PKG_SUGGESTED_OPTIONS=		unibilium

.include "../../mk/bsd.options.mk"

###
### Use ncurses
###
.  if !empty(PKG_OPTIONS:Mncurses)
.include "../../mk/termcap.buildlink3.mk"
.  endif

###
### Use unibilium
###
.  if !empty(PKG_OPTIONS:Munibilium)
.include "../../wip/libunibilium/buildlink3.mk"
.  endif
