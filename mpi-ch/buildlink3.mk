# $NetBSD: buildlink3.mk,v 1.15 2010/12/17 02:47:18 asau Exp $

BUILDLINK_TREE+=	mpich

.if !defined(MPICH_BUILDLINK3_MK)
MPICH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mpich+=	mpich>=3
BUILDLINK_PKGSRCDIR.mpich?=	../../wip/mpi-ch

FIND_PREFIX:=	BUILDLINK_PREFIX.mpich=mpich
.include "../../mk/find-prefix.mk"

.include "../../parallel/openpa/buildlink3.mk"
.endif	# MPICH_BUILDLINK3_MK

BUILDLINK_TREE+=	-mpich
