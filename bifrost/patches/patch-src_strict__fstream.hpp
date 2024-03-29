$NetBSD$

# Portability

--- src/strict_fstream.hpp.orig	2023-10-10 13:54:08.000000000 +0000
+++ src/strict_fstream.hpp
@@ -64,7 +64,7 @@ static std::string strerror()
     } else {
         return "Unknown error (" + std::to_string(err_num) + ")";
     }
-#elif ((_POSIX_C_SOURCE >= 200112L || _XOPEN_SOURCE >= 600) && ! _GNU_SOURCE) || defined(__APPLE__) || defined(__MUSL__)
+#elif ((_POSIX_C_SOURCE >= 200112L || _XOPEN_SOURCE >= 600) && ! _GNU_SOURCE) || defined(__APPLE__) || defined(__MUSL__) || defined(__FreeBSD__) || defined(__NetBSD__)
 // XSI-compliant strerror_r()
     const int err_num = errno; // See above
     if (strerror_r(err_num, buff.data(), buff.size()) == 0) {
