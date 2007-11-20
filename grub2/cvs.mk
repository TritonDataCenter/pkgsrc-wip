# $NetBSD$

.include "../../mk/bsd.fast.prefs.mk"

CVS_REPOSITORIES=	grub2
CVS_ROOT.grub2=		:pserver:anonymous:@cvs.savannah.gnu.org:/sources/grub
CVS_MODULE.grub2=	grub2

GRUB_VERSION?=	${:!${DATE} '+%Y%m%d'!}
