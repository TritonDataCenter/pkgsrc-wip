# $NetBSD$

BUILDLINK_TREE+=	libgnugetopt

.if !defined(LIBGNUGETOPT_BUILDLINK3_MK)
LIBGNUGETOPT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libgnugetopt+=	libgnugetopt>=1.2
BUILDLINK_PKGSRCDIR.libgnugetopt?=	../../wip/libgnugetopt
.endif # LIBGNUGETOPT_BUILDLINK3_MK

BUILDLINK_TREE+=	-libgnugetopt
