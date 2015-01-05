# $NetBSD$

.include "Makefile.common"

COMMENT=C++ bindings for GDome2 DOM implementaion

CONFIGURE_ARGS+=	--with-modules=gdome_cpp_smart
PKGCONFIG_OVERRIDE+=	gdome2-cpp-smart.pc.in

.include "../../textproc/gdome2/buildlink3.mk"
BUILDLINK_DEPMETHOD.libxslt=  build
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
