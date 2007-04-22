/* $NetBSD$ */
#ifndef __hpux
#error This header file doesn't apply to this platform.
#endif

#ifndef _PKGSRC_STDINT_H_
#define _PKGSRC_STDINT_H_
#ifdef __hpux
#include <inttypes.h>
#ifndef UINT_FAST32_MAX
#define UINT_FAST32_MAX 0xffffffffU
#endif
#endif /* __hpux */
#endif /* _PKGSRC_STDINT_H_ */
