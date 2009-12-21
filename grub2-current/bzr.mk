# $NetBSD$
#

BUILD_DEPENDS+=		bzr>=1.0:../../devel/bzr

DISTFILES?=		# empty
BZR_REPOSITORY=		http://bzr.savannah.gnu.org/r/grub/trunk/grub

pre-extract: do-bzr-extract

.PHONY: do-bzr-extract
do-bzr-extract:
	${RUN} set -e;								\
	cd ${WRKDIR};								\
	${STEP_MSG} "Exporting from bazaar repository "${BZR_REPOSITORY};	\
	bzr export ${DISTNAME} ${BZR_REPOSITORY}

pre-configure:
	cd ${WRKSRC} && ./autogen.sh
