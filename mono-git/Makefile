# $NetBSD: Makefile,v 1.168 2016/02/24 16:48:09 jperkin Exp $

GIT_REPOSITORIES=	mono
GIT_REPO.mono=		https://github.com/mono/mono.git

DISTNAME=	mono
PKGNAME=	mono-0.0.0
CATEGORIES=	lang

MAINTAINER=	kamil@NetBSD.org
HOMEPAGE=	https://www.mono-project.com/
COMMENT=	Open source ECMA CLI, C# and .NET implementation
LICENSE=	mit AND gnu-gpl-v2 AND gnu-lgpl-v2 AND apache-2.0

TOOL_DEPENDS+=	p5-XML-Parser-[0-9]*:../../textproc/p5-XML-Parser
CONFLICTS=	pnet-[0-9]* mcsim-[0-9]* lc-[0-9]*
ALL_ENV+=	MONO_SHARED_DIR=${WRKDIR} PLATFORM=
WRKSRC=		${WRKDIR}/mono

USE_TOOLS+=	bash:run bison gmake gtar msgfmt perl:run pkg-config autoconf automake autoreconf gsed
USE_LIBTOOL=	yes
USE_LANGUAGES+=	c c99 c++
EXTRACT_USING=	gtar

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR} --with-icu=yes
CONFIGURE_ARGS+=	--with-preview=yes --with-libgdiplus=installed
CONFIGURE_ARGS+=	--disable-dtrace --with-gc=none

.include "options.mk"

MAKE_FLAGS+=		PERL=${PERL5:Q} mandir=${PREFIX}/${PKGMANDIR}
UNLIMIT_RESOURCES=	datasize stacksize memorysize

PKGCONFIG_OVERRIDE+=	mono-uninstalled.pc.in data/cecil.pc.in
PKGCONFIG_OVERRIDE+=	data/dotnet.pc.in data/dotnet35.pc.in data/mint.pc.in
PKGCONFIG_OVERRIDE+=	data/monodoc.pc.in
PKGCONFIG_OVERRIDE+=	data/mono-cairo.pc.in data/mono-lineeditor.pc.in
PKGCONFIG_OVERRIDE+=	data/mono-nunit.pc.in data/mono-options.pc.in
PKGCONFIG_OVERRIDE+=	data/mono.pc.in
PKGCONFIG_OVERRIDE+=	data/reactive.pc.in
PKGCONFIG_OVERRIDE+=	data/system.web.extensions_1.0.pc.in
PKGCONFIG_OVERRIDE+=	data/system.web.extensions.design_1.0.pc.in
PKGCONFIG_OVERRIDE+=	data/system.web.mvc.pc.in data/wcf.pc.in

REPLACE_PERL+=	mcs/errors/do-tests.pl mcs/tools/scan-tests.pl
REPLACE_PERL+=	msvc/create-windef.pl mono/benchmark/test-driver
REPLACE_PERL+=	mono/cil/make-opcodes-def.pl mono/metadata/make-bundle.pl
REPLACE_PERL+=	mono/mini/genmdesc.pl mono/tests/stress-runner.pl

REPLACE_PYTHON+=	scripts/mono-heapviz

REPLACE_BASH+=	build-mingw32.sh mono/arch/arm/dpiops.sh mono/arch/arm/fpaops.sh
REPLACE_BASH+=	mono/arch/arm/vfpops.sh mono/tests/make_imt_test.sh
REPLACE_BASH+=	scripts/mono-find-provides.in scripts/mono-find-requires.in
REPLACE_BASH+=	scripts/mono-test-install web/mono-build-w32.sh
REPLACE_BASH+=	mcs/class/Mono.WebBrowser/build-csproj2k5
REPLACE_BASH+=	mcs/class/Managed.Windows.Forms/build-csproj
REPLACE_BASH+=	mcs/class/Managed.Windows.Forms/build-csproj2k5
REPLACE_BASH+=	mcs/class/Mono.Cairo/Samples/gtk/compile.sh
REPLACE_BASH+=	mcs/class/Mono.Cairo/Samples/png/compile.sh
REPLACE_BASH+=	mcs/class/Mono.Cairo/Samples/win32/compile.sh
REPLACE_BASH+=	mcs/class/Mono.Cairo/Samples/x11/compile.sh
REPLACE_BASH+=	mcs/tools/tinderbox/tinderbox.sh libgc/mkinstalldirs
REPLACE_BASH+=	mcs/mkinstalldirs mkinstalldirs
REPLACE_BASH+=	autogen.sh

EGDIR=		${PREFIX}/share/examples/mono
CONF_FILES=	${EGDIR}/config ${PKG_SYSCONFDIR}/mono/config
CONF_FILES+=	${EGDIR}/browscap.ini ${PKG_SYSCONFDIR}/mono/browscap.ini
CONF_FILES+=	${EGDIR}/2.0/DefaultWsdlHelpGenerator.aspx \
			${PKG_SYSCONFDIR}/mono/2.0/DefaultWsdlHelpGenerator.aspx
CONF_FILES+=	${EGDIR}/2.0/machine.config \
			${PKG_SYSCONFDIR}/mono/2.0/machine.config
CONF_FILES+=	${EGDIR}/mconfig/config.xml \
			${PKG_SYSCONFDIR}/mono/mconfig/config.xml
CONF_FILES+=	${EGDIR}/2.0/settings.map \
			${PKG_SYSCONFDIR}/mono/2.0/settings.map
CONF_FILES+=	${EGDIR}/2.0/web.config \
			${PKG_SYSCONFDIR}/mono/2.0/web.config
CONF_FILES+=	${EGDIR}/2.0/Browsers/Compat.browser \
			${PKG_SYSCONFDIR}/mono/2.0/Browsers/Compat.browser
CONF_FILES+=	${EGDIR}/4.0/DefaultWsdlHelpGenerator.aspx \
			${PKG_SYSCONFDIR}/mono/4.0/DefaultWsdlHelpGenerator.aspx
CONF_FILES+=	${EGDIR}/4.0/machine.config \
			${PKG_SYSCONFDIR}/mono/4.0/machine.config
CONF_FILES+=	${EGDIR}/4.0/settings.map \
			${PKG_SYSCONFDIR}/mono/4.0/settings.map
CONF_FILES+=	${EGDIR}/4.0/web.config \
			${PKG_SYSCONFDIR}/mono/4.0/web.config
CONF_FILES+=	${EGDIR}/4.0/Browsers/Compat.browser \
			${PKG_SYSCONFDIR}/mono/4.0/Browsers/Compat.browser
CONF_FILES+=	${EGDIR}/4.5/DefaultWsdlHelpGenerator.aspx \
			${PKG_SYSCONFDIR}/mono/4.5/DefaultWsdlHelpGenerator.aspx
CONF_FILES+=	${EGDIR}/4.5/machine.config \
			${PKG_SYSCONFDIR}/mono/4.5/machine.config
CONF_FILES+=	${EGDIR}/4.5/settings.map \
			${PKG_SYSCONFDIR}/mono/4.5/settings.map
CONF_FILES+=	${EGDIR}/4.5/web.config  ${PKG_SYSCONFDIR}/mono/4.5/web.config
CONF_FILES+=	${EGDIR}/4.5/Browsers/Compat.browser \
			${PKG_SYSCONFDIR}/mono/4.5/Browsers/Compat.browser

MAKE_DIRS+=	${PKG_SYSCONFDIR}/mono/2.0
MAKE_DIRS+=	${PKG_SYSCONFDIR}/mono/2.0/Browsers
MAKE_DIRS+=	${PKG_SYSCONFDIR}/mono/4.0
MAKE_DIRS+=	${PKG_SYSCONFDIR}/mono/4.0/Browsers
MAKE_DIRS+=	${PKG_SYSCONFDIR}/mono/4.5
MAKE_DIRS+=	${PKG_SYSCONFDIR}/mono/4.5/Browsers
MAKE_DIRS+=	${PKG_SYSCONFDIR}/mono/mconfig

INSTALLATION_DIRS+=	share/examples/mono/4.5

TEST_TARGET=	check

SUBST_CLASSES+=			fix-prefix
SUBST_STAGE.fix-prefix=		post-patch
SUBST_MESSAGE.fix-prefix=	Fixing relative prefix
SUBST_FILES.fix-prefix=		${PKGCONFIG_OVERRIDE}
SUBST_SED.fix-prefix=		-e 's,$${pcfiledir}/../..,\@prefix\@,g'

SUBST_CLASSES+=			fix-mcs
SUBST_STAGE.fix-mcs=		post-patch
SUBST_MESSAGE.fix-mcs=		Fixing mcs default prefix
SUBST_FILES.fix-mcs=		mcs/build/config-default.make
SUBST_VARS.fix-mcs=		PREFIX PKGMANDIR

SUBST_CLASSES+=			fix-cfgdir
SUBST_STAGE.fix-cfgdir=		post-patch
SUBST_MESSAGE.fix-cfgdir=	Fixing configuration files install dir
SUBST_FILES.fix-cfgdir=		mcs/tools/mconfig/Makefile
SUBST_SED.fix-cfgdir=		-e 's,$$(sysconfdir)/mono,${EGDIR},g'

SUBST_CLASSES+=			fix-libx11
SUBST_STAGE.fix-libx11=		pre-configure
SUBST_MESSAGE.fix-libx11=	Fixing libX11 search path configuration
SUBST_FILES.fix-libx11=		configure
SUBST_VARS.fix-libx11=		X11BASE

PLIST_VARS=	monodoc

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "SunOS"
CFLAGS+=		-D_XOPEN_SOURCE=600
CONFIGURE_ARGS+=	--with-mcs-docs=no
CONFIGURE_ARGS+=	--with-sgen=no
CONFIGURE_ARGS+=	--with-sigaltstack=no
CONFIGURE_ENV+=		ac_cv_func_getdomainname=no
CONFIGURE_ENV+=		ac_cv_func_setdomainname=no
ULIMIT_CMD_datasize=	ulimit -d 524288
ULIMIT_CMD_stacksize=	ulimit -s 10240
.elif ${OPSYS} == "NetBSD" && ${MACHINE_ARCH:M*arm*}
CONFIGURE_ARGS+=	--with-mcs-docs=no
CONFIGURE_ARGS+=	--disable-parallel-mark
.else
PLIST.monodoc=		yes
.endif

.if ${MACHINE_ARCH:M*i[34]86*}
# for gcc byte atomic builtins
GNU_ARCH.i386=		i586
CFLAGS+=		-march=i586
.endif

pre-configure:
	${RUN} cd ${WRKSRC} && NOCONFIGURE=1 ./autogen.sh

post-install:
	${INSTALL_DATA} ${WRKSRC}/data/net_4_5/DefaultWsdlHelpGenerator.aspx \
		${DESTDIR}${EGDIR}/4.5/DefaultWsdlHelpGenerator.aspx
	${INSTALL_DATA} ${WRKSRC}/data/net_4_5/machine.config \
		${DESTDIR}${EGDIR}/4.5/machine.config
	${INSTALL_DATA} ${WRKSRC}/data/net_4_5/settings.map \
		${DESTDIR}${EGDIR}/4.5/settings.map
	${INSTALL_DATA} ${WRKSRC}/data/net_4_5/web.config \
		${DESTDIR}${EGDIR}/4.5/web.config
.if ${OPSYS} == "Darwin"
	for lib in mcs.exe.dylib mscorlib.dll.dylib; do \
		install_name_tool -id ${PREFIX}/lib/mono/4.5/$$lib \
		    ${DESTDIR}${PREFIX}/lib/mono/4.5/$$lib; \
	done
.endif

.include "../../wip/mk/git-package.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../textproc/icu/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
