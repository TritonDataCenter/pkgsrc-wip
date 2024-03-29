# $NetBSD: Makefile,v 1.238 2017/11/08 14:03:42 wiz Exp $

.include "Makefile.common"

CATEGORIES=		devel gnome

COMMENT=		Some useful routines for C programming (glib2)

USE_TOOLS+=		msgfmt perl:run readlink automake autoconf

PKGCONFIG_OVERRIDE+=	glib-2.0.pc.in
PKGCONFIG_OVERRIDE+=	gmodule-2.0.pc.in
PKGCONFIG_OVERRIDE+=	gmodule-export-2.0.pc.in
PKGCONFIG_OVERRIDE+=	gmodule-no-export-2.0.pc.in
PKGCONFIG_OVERRIDE+=	gobject-2.0.pc.in
PKGCONFIG_OVERRIDE+=	gthread-2.0.pc.in
PKGCONFIG_OVERRIDE+=	gio-2.0.pc.in
PKGCONFIG_OVERRIDE+=	gio-unix-2.0.pc.in
PKGCONFIG_OVERRIDE+=	gio-windows-2.0.pc.in

FILES_SUBST+=		GIO_MODULES_DIR=${PREFIX}/lib/gio/modules
FILES_SUBST+=		GIO_QUERYMODULES=${PREFIX}/bin/gio-querymodules
FILES_SUBST+=		GLIB_COMPILE_SCHEMAS=${PREFIX}/bin/glib-compile-schemas
FILES_SUBST+=		GLIB_SCHEMAS_DIR=${PREFIX}/share/glib-2.0/schemas

# gtester is the glib unit testing and reporting framework
# agc doesn't want glib2 to depend on python so we install it
# in a broken and useless state.
CHECK_INTERPRETER_SKIP+=	bin/gtester-report
CHECK_WRKREF_SKIP+=		bin/gtester-report

# need pcre utf8 + unicode-properties
BUILDLINK_API_DEPENDS.pcre+=	pcre>=8.31
# to avoid pkg-config dependency, explicitly specify pcre location
CONFIGURE_ARGS+=		PCRE_CFLAGS=-I${BUILDLINK_PREFIX.pcre}/include
CONFIGURE_ARGS+=		PCRE_LIBS="${COMPILER_RPATH_FLAG}${BUILDLINK_PREFIX.pcre}/lib -L${BUILDLINK_PREFIX.pcre}/lib -lpcre"

# needs gz_header structure
BUILDLINK_API_DEPENDS.zlib+=	zlib>=1.2.2.1

LIBS.SunOS+=		-lnsl -lsocket
CPPFLAGS.SunOS+=	-DBSD_COMP

.if ${OBJECT_FMT} == "ELF"
.  if ${OPSYS} == "SunOS"
.    if empty(ABI:U:M64)
# Solaris libelf in 32-bit mode does not support largefile.  We patch files
# individually to force _FILE_OFFSET_BITS=32 but need to turn back on -lelf
# after configure disabled it.
CONFIGURE_ENV+=		LIBELF_LIBS='-lelf'
.    endif
.  else
.    include "../../devel/libelf/buildlink3.mk"
.  endif
.endif

# XXX: Kludge to avoid uncoditionally pick up some gtkdoc-* tools if gtk-doc
# XXX: package is installed and then fails in the installation phase.
CONFIGURE_ENV+=	ac_cv_prog_GTKDOC_CHECK= \
		ac_cv_path_GTKDOC_CHECK_PATH= \
		ac_cv_path_GTKDOC_REBASE= \
		ac_cv_path_GTKDOC_MKPDF=

pre-configure:
	${RUN} cd ${WRKSRC} && ${SH} autogen.sh

# Hack, something is broken with --localedir
post-install:
	${RM} -rf ${DESTDIR}${PREFIX}/share

# to run gdbus-codegen to generate gdbus-daemon-generated.{h,c}
PY_PATCHPLIST=		yes
PYTHON_FOR_BUILD_ONLY?=	yes
.include "../../lang/python/pyversion.mk"
.include "../../lang/python/extension.mk"

IGNORE_PKG.libffi=	yes

_PKG_CONFIG_LIBDIR=	${BUILDLINK_DIR}/lib/pkgconfig:${BUILDLINK_DIR}/share/pkgconfig:${BUILDLINK_DIR}/frida/lib/pkgconfig

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/pcre/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../wip/frida-libffi/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
