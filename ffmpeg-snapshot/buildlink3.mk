# $NetBSD$

BUILDLINK_TREE+=	ffmpeg-snapshot

.if !defined(FFMPEG_SNAPSHOT_BUILDLINK3_MK)
FFMPEG_SNAPSHOT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ffmpeg-snapshot+=	ffmpeg-snapshot>=20061213
BUILDLINK_PKGSRCDIR.ffmpeg-snapshot?=	../../wip/ffmpeg-snapshot
.endif # FFMPEG_SNAPSHOT_BUILDLINK3_MK

BUILDLINK_TREE+=	-ffmpeg-snapshot
