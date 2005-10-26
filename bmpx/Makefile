# $NetBSD$
#

.include "Makefile.common"

COMMENT+=	(using GStreamer)

CONFLICTS+=	bmpx-xine-[0-9]*

CONFIGURE_ARGS+=	--enable-gst
CONFIGURE_ARGS+=	--disable-xine

BROKEN=			GStreamer >= 0.9.1 is needed

.include "../../multimedia/gst-plugins/buildlink3.mk"
.include "../../multimedia/gstreamer/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
