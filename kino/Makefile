# $NetBSD$
#

DISTNAME=		kino-0.7.1
CATEGORIES=		multimedia
MASTER_SITES=		http://kino.schirmacher.de/filemanager/download/31/

MAINTAINER=		reed@reedmedia.net
HOMEPAGE=		http://kino.schirmacher.de/
COMMENT=		Non-linear editor for Digital Video data

USE_BUILDLINK3=		yes
USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes

# Use FFMPEG libavcodec for DV video decoding instead of libdv.  
# XXX maybe should be an option
CONFIGURE_ARGS+=	--with-avcodec

.include "../../multimedia/ffmpeg/buildlink3.mk"
#.include "../../wip/libdv/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
