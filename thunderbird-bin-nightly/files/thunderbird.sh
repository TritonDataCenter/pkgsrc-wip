#!@SH@
# $NetBSD$

LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:@PREFIX@/lib/thunderbird-@PLATFORM@:@PREFIX@/lib"
export LD_LIBRARY_PATH

exec @PREFIX@/lib/thunderbird-@PLATFORM@/thunderbird "$@"
