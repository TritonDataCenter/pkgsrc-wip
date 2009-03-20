# $NetBSD$

BUILDLINK_TREE+=	audio-mml

.if !defined(AUDIO_MML_BUILDLINK3_MK)
AUDIO_MML_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.audio-mml+=	audio-mml>=4.4.01
BUILDLINK_PKGSRCDIR.audio-mml?=	../../wip/audio-mml

.include "../../wip/common-mml/buildlink3.mk"
.endif # AUDIO_MML_BUILDLINK3_MK

BUILDLINK_TREE+=	-audio-mml
