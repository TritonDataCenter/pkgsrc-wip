#!@SH@
# $NetBSD$

LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:@PREFIX@/lib/MozillaFirebird-xft2-@PLATFORM@:@PREFIX@/lib"
export LD_LIBRARY_PATH

exec @PREFIX@/lib/MozillaFirebird-xft2-@PLATFORM@/MozillaFirebird "$@"
