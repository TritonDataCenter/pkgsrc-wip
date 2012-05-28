# $NetBSD$

BUILDLINK_TREE+=	libctl

.if !defined(LIBCTL_BUILDLINK3_MK)
LIBCTL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libctl+=	libctl>=3.1
BUILDLINK_PKGSRCDIR.libctl?=	../../wip/libctl

# CONFIGURE_ARGS+=	--with-libctl=${PREFIX}

.include "../../lang/guile16/buildlink3.mk"
.endif	# LIBCTL_BUILDLINK3_MK

BUILDLINK_TREE+=	-libctl
