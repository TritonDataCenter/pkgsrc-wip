# $NetBSD$

BUILDLINK_TREE+=	hs-colorize-haskell

.if !defined(HS_COLORIZE_HASKELL_BUILDLINK3_MK)
HS_COLORIZE_HASKELL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-colorize-haskell+=	hs-colorize-haskell>=1.0.1
BUILDLINK_ABI_DEPENDS.hs-colorize-haskell+=	hs-colorize-haskell>=1.0.1
BUILDLINK_PKGSRCDIR.hs-colorize-haskell?=	../../wip/hs-colorize-haskell

.include "../../devel/hs-ansi-terminal/buildlink3.mk"
.include "../../wip/hs-haskell-lexer/buildlink3.mk"
.endif	# HS_COLORIZE_HASKELL_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-colorize-haskell
