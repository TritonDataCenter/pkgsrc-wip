# $NetBSD: buildlink3.mk,v 1.8 2009/03/20 19:24:56 joerg Exp $

BUILDLINK_TREE+=	fftw-mpi

.if !defined(FFTW_BUILDLINK3_MK)
FFTW_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.fftw-mpi+=	fftw-mpi>=3.0
BUILDLINK_ABI_DEPENDS.fftw-mpi+=	fftw-mpi>=3.1nb1
BUILDLINK_PKGSRCDIR.fftw-mpi?=	../../wip/fftw-mpi

.include "../../wip/openmpi-prefixed/buildlink3.mk"
.endif # FFTW_BUILDLINK3_MK

BUILDLINK_TREE+=	-fftw-mpi
