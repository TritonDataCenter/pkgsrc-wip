$NetBSD$

--- lib/sanitizer_common/sanitizer_platform_limits_posix.cc.orig	2017-07-03 15:33:06.000000000 +0000
+++ lib/sanitizer_common/sanitizer_platform_limits_posix.cc
@@ -14,7 +14,7 @@
 
 #include "sanitizer_platform.h"
 
-#if SANITIZER_LINUX || SANITIZER_FREEBSD || SANITIZER_MAC
+#if SANITIZER_LINUX || SANITIZER_FREEBSD || SANITIZER_MAC || SANITIZER_NETBSD
 // Tests in this file assume that off_t-dependent data structures match the
 // libc ABI. For example, struct dirent here is what readdir() function (as
 // exported from libc) returns, and not the user-facing "dirent", which
@@ -79,7 +79,7 @@
 #include <net/if_arp.h>
 #endif
 
-#if SANITIZER_FREEBSD
+#if SANITIZER_FREEBSD || SANITIZER_NETBSD
 # include <sys/mount.h>
 # include <sys/sockio.h>
 # include <sys/socket.h>
@@ -94,16 +94,18 @@
 # include <sys/statvfs.h>
 # include <sys/soundcard.h>
 # include <sys/mtio.h>
-# include <sys/consio.h>
-# include <sys/kbio.h>
-# include <sys/link_elf.h>
 # include <netinet/ip_mroute.h>
 # include <netinet/in.h>
-# include <net/ethernet.h>
 # include <net/ppp_defs.h>
 # include <glob.h>
 # include <term.h>
+#endif
 
+#if SANITIZER_FREEBSD
+#include <net/ethernet.h>
+#include <sys/consio.h>
+#include <sys/kbio.h>
+#include <sys/link_elf.h>
 #define _KERNEL  // to declare 'shminfo' structure
 # include <sys/shm.h>
 #undef _KERNEL
@@ -111,11 +113,19 @@
 #undef INLINE  // to avoid clashes with sanitizers' definitions
 #endif
 
-#if SANITIZER_FREEBSD || SANITIZER_IOS
+#if SANITIZER_NETBSD
+#include <link_elf.h>
+#include <net/if_ether.h>
+#include <sys/shm.h>
+#define statfs statvfs
+#define d_ino d_fileno
+#endif
+
+#if SANITIZER_FREEBSD || SANITIZER_IOS || SANITIZER_NETBSD
 #undef IOC_DIRMASK
 #endif
 
-#if SANITIZER_LINUX || SANITIZER_FREEBSD
+#if SANITIZER_LINUX || SANITIZER_FREEBSD || SANITIZER_NETBSD
 # include <utime.h>
 # include <sys/ptrace.h>
 # if defined(__mips64) || defined(__aarch64__) || defined(__arm__)
@@ -200,9 +210,9 @@ typedef struct user_fpregs elf_fpregset_
 namespace __sanitizer {
   unsigned struct_utsname_sz = sizeof(struct utsname);
   unsigned struct_stat_sz = sizeof(struct stat);
-#if !SANITIZER_IOS && !SANITIZER_FREEBSD
+#if !SANITIZER_IOS && !SANITIZER_FREEBSD && !SANITIZER_NETBSD
   unsigned struct_stat64_sz = sizeof(struct stat64);
-#endif // !SANITIZER_IOS && !SANITIZER_FREEBSD
+#endif  // !SANITIZER_IOS && !SANITIZER_FREEBSD && !SANITIZER_NETBSD
   unsigned struct_rusage_sz = sizeof(struct rusage);
   unsigned struct_tm_sz = sizeof(struct tm);
   unsigned struct_passwd_sz = sizeof(struct passwd);
@@ -245,12 +255,12 @@ namespace __sanitizer {
   unsigned struct_oldold_utsname_sz = sizeof(struct oldold_utsname);
 #endif // SANITIZER_LINUX
 
-#if SANITIZER_LINUX || SANITIZER_FREEBSD
+#if SANITIZER_LINUX || SANITIZER_FREEBSD || SANITIZER_NETBSD
   unsigned struct_rlimit_sz = sizeof(struct rlimit);
   unsigned struct_timespec_sz = sizeof(struct timespec);
   unsigned struct_utimbuf_sz = sizeof(struct utimbuf);
   unsigned struct_itimerspec_sz = sizeof(struct itimerspec);
-#endif // SANITIZER_LINUX || SANITIZER_FREEBSD
+#endif  // SANITIZER_LINUX || SANITIZER_FREEBSD || SANITIZER_NETBSD
 
 #if SANITIZER_LINUX && !SANITIZER_ANDROID
   unsigned struct_ustat_sz = sizeof(struct ustat);
@@ -258,12 +268,14 @@ namespace __sanitizer {
   unsigned struct_statvfs64_sz = sizeof(struct statvfs64);
 #endif // SANITIZER_LINUX && !SANITIZER_ANDROID
 
-#if (SANITIZER_LINUX || SANITIZER_FREEBSD) && !SANITIZER_ANDROID
+#if (SANITIZER_LINUX || SANITIZER_FREEBSD || SANITIZER_NETBSD) && \
+    !SANITIZER_ANDROID
   unsigned struct_timex_sz = sizeof(struct timex);
   unsigned struct_msqid_ds_sz = sizeof(struct msqid_ds);
   unsigned struct_mq_attr_sz = sizeof(struct mq_attr);
   unsigned struct_statvfs_sz = sizeof(struct statvfs);
-#endif // (SANITIZER_LINUX || SANITIZER_FREEBSD) && !SANITIZER_ANDROID
+#endif  // (SANITIZER_LINUX || SANITIZER_FREEBSD || SANITIZER_NETBSD) &&
+        // !SANITIZER_ANDROID
 
   uptr sig_ign = (uptr)SIG_IGN;
   uptr sig_dfl = (uptr)SIG_DFL;
@@ -273,10 +285,17 @@ namespace __sanitizer {
   int e_tabsz = (int)E_TABSZ;
 #endif
 
-
-#if (SANITIZER_LINUX || SANITIZER_FREEBSD) && !SANITIZER_ANDROID
+#if (SANITIZER_LINUX || SANITIZER_FREEBSD || SANITIZER_NETBSD) && \
+    !SANITIZER_ANDROID
   unsigned struct_shminfo_sz = sizeof(struct shminfo);
+#if !SANITIZER_NETBSD
   unsigned struct_shm_info_sz = sizeof(struct shm_info);
+#else
+#define IPC_INFO -1
+#define SHM_INFO -1
+#define SHM_STAT -1
+  unsigned struct_shm_info_sz = -1;
+#endif
   int shmctl_ipc_stat = (int)IPC_STAT;
   int shmctl_ipc_info = (int)IPC_INFO;
   int shmctl_shm_info = (int)SHM_INFO;
@@ -310,9 +329,10 @@ unsigned struct_ElfW_Phdr_sz = sizeof(El
 unsigned struct_ElfW_Phdr_sz = sizeof(Elf_Phdr);
 #endif
 
-#if (SANITIZER_LINUX || SANITIZER_FREEBSD) && !SANITIZER_ANDROID
-  int glob_nomatch = GLOB_NOMATCH;
-  int glob_altdirfunc = GLOB_ALTDIRFUNC;
+#if (SANITIZER_LINUX || SANITIZER_FREEBSD || SANITIZER_NETBSD) && \
+    !SANITIZER_ANDROID
+int glob_nomatch = GLOB_NOMATCH;
+int glob_altdirfunc = GLOB_ALTDIRFUNC;
 #endif
 
 #if SANITIZER_LINUX && !SANITIZER_ANDROID && \
@@ -452,7 +472,7 @@ unsigned struct_ElfW_Phdr_sz = sizeof(El
   unsigned struct_seq_event_rec_sz = sizeof(struct seq_event_rec);
   unsigned struct_synth_info_sz = sizeof(struct synth_info);
   unsigned struct_vt_mode_sz = sizeof(struct vt_mode);
-#endif // SANITIZER_LINUX || SANITIZER_FREEBSD
+#endif  // SANITIZER_LINUX || SANITIZER_FREEBSD || SANITIZER_NETBSD
 
 #if SANITIZER_LINUX && !SANITIZER_ANDROID
   unsigned struct_ax25_parms_struct_sz = sizeof(struct ax25_parms_struct);
@@ -479,7 +499,8 @@ unsigned struct_ElfW_Phdr_sz = sizeof(El
   unsigned struct_unimapinit_sz = sizeof(struct unimapinit);
 #endif // SANITIZER_LINUX && !SANITIZER_ANDROID
 
-#if (SANITIZER_LINUX || SANITIZER_FREEBSD) && !SANITIZER_ANDROID
+#if (SANITIZER_LINUX || SANITIZER_FREEBSD || SANITIZER_NETBSD) && \
+    !SANITIZER_ANDROID
   unsigned struct_audio_buf_info_sz = sizeof(struct audio_buf_info);
   unsigned struct_ppp_stats_sz = sizeof(struct ppp_stats);
 #endif // (SANITIZER_LINUX || SANITIZER_FREEBSD) && !SANITIZER_ANDROID
@@ -535,7 +556,8 @@ unsigned struct_ElfW_Phdr_sz = sizeof(El
   unsigned IOCTL_TIOCSPGRP = TIOCSPGRP;
   unsigned IOCTL_TIOCSTI = TIOCSTI;
   unsigned IOCTL_TIOCSWINSZ = TIOCSWINSZ;
-#if ((SANITIZER_LINUX || SANITIZER_FREEBSD) && !SANITIZER_ANDROID)
+#if ((SANITIZER_LINUX || SANITIZER_FREEBSD || SANITIZER_NETBSD) && \
+     !SANITIZER_ANDROID)
   unsigned IOCTL_SIOCGETSGCNT = SIOCGETSGCNT;
   unsigned IOCTL_SIOCGETVIFCNT = SIOCGETVIFCNT;
 #endif
@@ -975,7 +997,7 @@ COMPILER_CHECK(IOC_NR(0x12345678) == _IO
 COMPILER_CHECK(IOC_TYPE(0x12345678) == _IOC_TYPE(0x12345678));
 #endif // SANITIZER_LINUX
 
-#if SANITIZER_LINUX || SANITIZER_FREEBSD
+#if SANITIZER_LINUX || SANITIZER_FREEBSD || SANITIZER_NETBSD
 // There are more undocumented fields in dl_phdr_info that we are not interested
 // in.
 COMPILER_CHECK(sizeof(__sanitizer_dl_phdr_info) <= sizeof(dl_phdr_info));
@@ -983,9 +1005,10 @@ CHECK_SIZE_AND_OFFSET(dl_phdr_info, dlpi
 CHECK_SIZE_AND_OFFSET(dl_phdr_info, dlpi_name);
 CHECK_SIZE_AND_OFFSET(dl_phdr_info, dlpi_phdr);
 CHECK_SIZE_AND_OFFSET(dl_phdr_info, dlpi_phnum);
-#endif // SANITIZER_LINUX || SANITIZER_FREEBSD
+#endif  // SANITIZER_LINUX || SANITIZER_FREEBSD || SANITIZER_NETBSD
 
-#if (SANITIZER_LINUX || SANITIZER_FREEBSD) && !SANITIZER_ANDROID
+#if (SANITIZER_LINUX || SANITIZER_FREEBSD || SANITIZER_NETBSD) && \
+    !SANITIZER_ANDROID
 CHECK_TYPE_SIZE(glob_t);
 CHECK_SIZE_AND_OFFSET(glob_t, gl_pathc);
 CHECK_SIZE_AND_OFFSET(glob_t, gl_pathv);
@@ -1037,7 +1060,7 @@ COMPILER_CHECK(sizeof(__sanitizer_dirent
 CHECK_SIZE_AND_OFFSET(dirent, d_ino);
 #if SANITIZER_MAC
 CHECK_SIZE_AND_OFFSET(dirent, d_seekoff);
-#elif SANITIZER_FREEBSD
+#elif SANITIZER_FREEBSD || SANITIZER_NETBSD
 // There is no 'd_off' field on FreeBSD.
 #else
 CHECK_SIZE_AND_OFFSET(dirent, d_off);
@@ -1134,11 +1157,15 @@ CHECK_SIZE_AND_OFFSET(mntent, mnt_passno
 
 CHECK_TYPE_SIZE(ether_addr);
 
-#if (SANITIZER_LINUX || SANITIZER_FREEBSD) && !SANITIZER_ANDROID
+#if (SANITIZER_LINUX || SANITIZER_FREEBSD || SANITIZER_NETBSD) && \
+    !SANITIZER_ANDROID
 CHECK_TYPE_SIZE(ipc_perm);
 # if SANITIZER_FREEBSD
 CHECK_SIZE_AND_OFFSET(ipc_perm, key);
 CHECK_SIZE_AND_OFFSET(ipc_perm, seq);
+#elif SANITIZER_NETBSD
+CHECK_SIZE_AND_OFFSET(ipc_perm, _key);
+CHECK_SIZE_AND_OFFSET(ipc_perm, _seq);
 # else
 CHECK_SIZE_AND_OFFSET(ipc_perm, __key);
 CHECK_SIZE_AND_OFFSET(ipc_perm, __seq);
@@ -1175,20 +1202,20 @@ CHECK_SIZE_AND_OFFSET(ifaddrs, ifa_next)
 CHECK_SIZE_AND_OFFSET(ifaddrs, ifa_name);
 CHECK_SIZE_AND_OFFSET(ifaddrs, ifa_addr);
 CHECK_SIZE_AND_OFFSET(ifaddrs, ifa_netmask);
-#if SANITIZER_LINUX || SANITIZER_FREEBSD
+#if SANITIZER_LINUX || SANITIZER_FREEBSD || SANITIZER_NETBSD
 // Compare against the union, because we can't reach into the union in a
 // compliant way.
 #ifdef ifa_dstaddr
 #undef ifa_dstaddr
 #endif
-# if SANITIZER_FREEBSD
+#if SANITIZER_FREEBSD || SANITIZER_NETBSD
 CHECK_SIZE_AND_OFFSET(ifaddrs, ifa_dstaddr);
 # else
 COMPILER_CHECK(sizeof(((__sanitizer_ifaddrs *)nullptr)->ifa_dstaddr) ==
                sizeof(((ifaddrs *)nullptr)->ifa_ifu));
 COMPILER_CHECK(offsetof(__sanitizer_ifaddrs, ifa_dstaddr) ==
                offsetof(ifaddrs, ifa_ifu));
-# endif // SANITIZER_FREEBSD
+#endif  // SANITIZER_FREEBSD || SANITIZER_NETBSD
 #else
 CHECK_SIZE_AND_OFFSET(ifaddrs, ifa_dstaddr);
 #endif // SANITIZER_LINUX
@@ -1289,4 +1316,5 @@ CHECK_TYPE_SIZE(sem_t);
 COMPILER_CHECK(ARM_VFPREGS_SIZE == ARM_VFPREGS_SIZE_ASAN);
 #endif
 
-#endif // SANITIZER_LINUX || SANITIZER_FREEBSD || SANITIZER_MAC
+#endif  // SANITIZER_LINUX || SANITIZER_FREEBSD || SANITIZER_MAC ||
+        // SANITIZER_NETBSD
