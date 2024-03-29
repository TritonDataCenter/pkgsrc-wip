# $NetBSD: download.mk,v 1.26 2013/09/09 09:47:45 gregoire Exp $
#

#
# Helper file to access the bazaar repository, download extra stuff (such as
# translations), and generate the configure script with autogen.sh.
#

.if defined(BATCH)
PKG_SKIP_REASON+=	"skipping bzr package in bulk build"
.endif

TOOL_DEPENDS+=		bzr>=1.0:../../devel/bzr
TOOL_DEPENDS+=		rsync>=3.0:../../net/rsync
TOOL_DEPENDS+=		autogen>=5.9:../../devel/autogen

BZR_REPOSITORY=		bzr://bzr.savannah.gnu.org/grub/trunk/grub
BZR_REVISION=		5148

pre-extract: do-bzr-extract

.PHONY: do-bzr-extract
do-bzr-extract:
	${RUN} set -e;								\
	cd ${WRKDIR};								\
	${STEP_MSG} "Exporting from bazaar repository "${BZR_REPOSITORY};	\
	bzr export -r ${BZR_REVISION} ${DISTNAME} ${BZR_REPOSITORY}

post-extract: do-extra-downloads

.PHONY: do-extra-downloads
do-extra-downloads:
	(${ECHO} "/^autogenerated=/d" && ${ECHO} "w") | ed -s ${WRKSRC}/linguas.sh
	cd ${WRKSRC} && ./linguas.sh

pre-configure: do-autogen

.PHONY: do-autogen
do-autogen:
	cd ${WRKSRC} && ./autogen.sh

# Python is used to generate the autogen makefile template.
.include "../../lang/python/tool.mk"
