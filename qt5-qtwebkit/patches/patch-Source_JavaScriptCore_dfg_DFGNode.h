$NetBSD: patch-Source_JavaScriptCore_dfg_DFGNode.h,v 1.1 2014/12/30 17:23:47 adam Exp $

* Add NetBSD support

--- Source/JavaScriptCore/dfg/DFGNode.h.orig	2017-06-04 20:16:05.000000000 +0000
+++ Source/JavaScriptCore/dfg/DFGNode.h
@@ -226,7 +226,7 @@ struct OpInfo {
     OpInfo() : m_value(0) { }
     explicit OpInfo(int32_t value) : m_value(static_cast<uintptr_t>(value)) { }
     explicit OpInfo(uint32_t value) : m_value(static_cast<uintptr_t>(value)) { }
-#if OS(DARWIN) || USE(JSVALUE64)
+#if OS(DARWIN) || (CPU(ARM) && OS(NETBSD)) || USE(JSVALUE64)
     explicit OpInfo(size_t value) : m_value(static_cast<uintptr_t>(value)) { }
 #endif
     explicit OpInfo(void* value) : m_value(reinterpret_cast<uintptr_t>(value)) { }
