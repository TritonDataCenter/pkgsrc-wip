# $NetBSD: buildlink3.mk,v 1.25 2017/01/21 20:06:46 ryoon Exp $

BUILDLINK_TREE+=	qt5-qtwebkit

.if !defined(QT5_QTWEBKIT_BUILDLINK3_MK)
QT5_QTWEBKIT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qt5-qtwebkit+=	qt5-qtwebkit>=5.8.0
BUILDLINK_ABI_DEPENDS.qt5-qtwebkit+=	qt5-qtwebkit>=5.8.0
BUILDLINK_PKGSRCDIR.qt5-qtwebkit?=	../../wip/qt5-qtwebkit

BUILDLINK_INCDIRS.qt5-qtwebkit+=	qt5/include
BUILDLINK_LIBDIRS.qt5-qtwebkit+=	qt5/lib
BUILDLINK_LIBDIRS.qt5-qtwebkit+=	qt5/plugins

.include "../../databases/sqlite3/buildlink3.mk"
.include "../../graphics/libwebp/buildlink3.mk"
.include "../../mk/curses.buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.if ${OPSYS} != "Darwin"
.include "../../multimedia/gst-plugins1-base/buildlink3.mk"
.include "../../x11/libXcomposite/buildlink3.mk"
.endif
.include "../../wip/qt5-qtdeclarative/buildlink3.mk"
.include "../../wip/qt5-qtlocation/buildlink3.mk"
.include "../../wip/qt5-qtmultimedia/buildlink3.mk"
.include "../../wip/qt5-qtsensors/buildlink3.mk"
.include "../../wip/qt5-qtwebchannel/buildlink3.mk"
PYTHON_FOR_BUILD_ONLY=			yes
.include "../../lang/python/tool.mk"
.include "../../lang/ruby/buildlink3.mk"
BUILDLINK_DEPMETHOD.${RUBY_BASE}=	build
.endif	# QT5_QTWEBKIT_BUILDLINK3_MK

BUILDLINK_TREE+=	-qt5-qtwebkit
