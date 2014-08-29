# $NetBSD$

DISTNAME=	go1.3beta1.src
PKGNAME=	go-1.3beta1
CATEGORIES=	lang
MASTER_SITES=	https://storage.googleapis.com/golang/

MAINTAINER=	bsiegert@NetBSD.org
HOMEPAGE=	http://golang.org/
COMMENT=	The Go programming language
LICENSE=	modified-bsd

WRKSRC=		${WRKDIR}/go
USE_TOOLS+=	bash:run perl:run pax

.include "../../mk/bsd.prefs.mk"

# TODO: other arm platforms?
ONLY_FOR_PLATFORM=	*-*-i386 *-*-x86_64 *-*-evbarm
NOT_FOR_PLATFORM=	SunOS-*-i386

.if ${MACHINE_ARCH} == "i386"
GOARCH=		386
.elif ${MACHINE_ARCH} == "x86_64"
GOARCH=		amd64
.elif ${MACHINE_ARCH} == "evbarm"
GOARCH=		arm
.endif

PLIST_SUBST+=		GO_PLATFORM=${LOWER_OPSYS:Q}_${GOARCH:Q} GOARCH=${GOARCH:Q}
PRINT_PLIST_AWK+=	{ gsub(/\/${LOWER_OPSYS:Q}_${GOARCH:Q}\//, "/$${GO_PLATFORM}/") }
PRINT_PLIST_AWK+=	{ gsub(/zasm_${LOWER_OPSYS:Q}_${GOARCH:Q}.h/, "zasm_$${GO_PLATFORM}.h") }
PRINT_PLIST_AWK+=	{ gsub(/zgoarch_${GOARCH:Q}.go/, "zgoarch_$${GOARCH}.go") }
PRINT_PLIST_AWK+=	{ gsub(/zgoos_${LOWER_OPSYS:Q}.go/, "zgoos_$${LOWER_OPSYS}.go") }
PRINT_PLIST_AWK+=	{ gsub(/zruntime_defs_${LOWER_OPSYS:Q}_${GOARCH:Q}.go/, "zruntime_defs_$${GO_PLATFORM}.go") }
PRINT_PLIST_AWK+=	{ gsub(/zsys_${LOWER_OPSYS:Q}_${GOARCH:Q}.s/, "zsys_$${GO_PLATFORM}.s") }
PRINT_PLIST_AWK+=	{ gsub(/zsyscall_${LOWER_OPSYS:Q}_${LOWER_OPSYS:Q}_${GOARCH:Q}.c/, "zsyscall_$${LOWER_OPSYS}_$${GO_PLATFORM}.c") }
PRINT_PLIST_AWK+=	{ gsub(/_${LOWER_OPSYS:Q}_${GOARCH:Q}.c/, "_$${GO_PLATFORM}.c") }

# cgo compiles under TMPDIR
TMPDIR?=	/tmp
BUILDLINK_PASSTHRU_DIRS+= ${TMPDIR}

# bash script may use unportable bash constructs
CHECK_PORTABILITY_SKIP=	lib/time/update.bash

GOROOT_FINAL=	${PREFIX}/go
INSTALLATION_DIRS= bin

REPLACE_BASH+=	doc/articles/wiki/test.bash
REPLACE_BASH+=	doc/codewalk/run
REPLACE_BASH+=	doc/progs/run
REPLACE_BASH+=	doc/progs/update.bash
REPLACE_BASH+=	misc/arm/a
REPLACE_BASH+=	misc/cgo/testso/test.bash
REPLACE_BASH+=	misc/dist/darwin/scripts/postinstall
REPLACE_BASH+=	misc/dist/darwin/scripts/preinstall
REPLACE_BASH+=	misc/vim/ftplugin/go/test.sh
REPLACE_BASH+=	misc/xcode/4/go4xcode.sh
REPLACE_BASH+=	src/all.bash
REPLACE_BASH+=	src/clean.bash
REPLACE_BASH+=	src/cmd/go/test.bash
REPLACE_BASH+=	src/make.bash
REPLACE_BASH+=	src/pkg/syscall/mkall.sh
REPLACE_BASH+=	src/pkg/syscall/mkerrors.sh
REPLACE_BASH+=	src/pkg/syscall/mkerrors_windows.sh
REPLACE_BASH+=	src/race.bash
REPLACE_BASH+=	src/run.bash
REPLACE_BASH+=	src/sudo.bash
REPLACE_BASH+=	test/bench/shootout/timing.sh
REPLACE_BASH+=	test/run

REPLACE_PERL+=	misc/pprof
REPLACE_PERL+=	misc/xcode/4/go4xcode.sh
REPLACE_PERL+=	src/pkg/net/http/cgi/testdata/test.cgi
REPLACE_PERL+=	src/pkg/regexp/syntax/make_perl_groups.pl
REPLACE_PERL+=	src/pkg/syscall/mksyscall.pl
REPLACE_PERL+=	src/pkg/syscall/mksyscall_solaris.pl
REPLACE_PERL+=	src/pkg/syscall/mksyscall_windows.pl
REPLACE_PERL+=	src/pkg/syscall/mksysctl_openbsd.pl
REPLACE_PERL+=	src/pkg/syscall/mksysnum_darwin.pl
REPLACE_PERL+=	src/pkg/syscall/mksysnum_dragonfly.pl
REPLACE_PERL+=	src/pkg/syscall/mksysnum_freebsd.pl
REPLACE_PERL+=	src/pkg/syscall/mksysnum_linux.pl
REPLACE_PERL+=	src/pkg/syscall/mksysnum_netbsd.pl
REPLACE_PERL+=	src/pkg/syscall/mksysnum_openbsd.pl
REPLACE_PERL+=	test/errchk

# uses /bin/rc (for Plan 9)
CHECK_INTERPRETER_SKIP+=	go/include/plan9/mklibc.rc
CHECK_INTERPRETER_SKIP+=	go/src/all.rc
CHECK_INTERPRETER_SKIP+=	go/src/clean.rc
CHECK_INTERPRETER_SKIP+=	go/src/make.rc
CHECK_INTERPRETER_SKIP+=	go/src/run.rc

do-build:
	cd ${WRKSRC}/src && env GOARCH=${GOARCH:Q} GOROOT_FINAL=${GOROOT_FINAL:Q} ${BASH} ./all.bash

do-install:
	cd ${WRKSRC} && rm -f .hgignore .hgtags
	cd ${WRKDIR} && pax -rw go ${DESTDIR}${PREFIX}
.for cmd in go gofmt
	cd ${DESTDIR}${PREFIX}/bin && ln -sf ../go/bin/${cmd} ${cmd}
.endfor

.include "../../mk/bsd.pkg.mk"
