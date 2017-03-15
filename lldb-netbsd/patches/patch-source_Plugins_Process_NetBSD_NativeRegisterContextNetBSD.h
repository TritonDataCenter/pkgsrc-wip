$NetBSD$

--- source/Plugins/Process/NetBSD/NativeRegisterContextNetBSD.h.orig	2017-03-13 11:59:28.721350583 +0000
+++ source/Plugins/Process/NetBSD/NativeRegisterContextNetBSD.h
@@ -0,0 +1,78 @@
+//===-- NativeRegisterContextNetBSD.h ----------------------------*- C++ -*-===//
+//
+//                     The LLVM Compiler Infrastructure
+//
+// This file is distributed under the University of Illinois Open Source
+// License. See LICENSE.TXT for details.
+//
+//===----------------------------------------------------------------------===//
+
+#ifndef lldb_NativeRegisterContextNetBSD_h
+#define lldb_NativeRegisterContextNetBSD_h
+
+#include "lldb/Host/common/NativeRegisterContextRegisterInfo.h"
+#include "lldb/Host/common/NativeThreadProtocol.h"
+
+#include "Plugins/Process/NetBSD/NativeProcessNetBSD.h"
+
+namespace lldb_private {
+namespace process_netbsd {
+
+class NativeRegisterContextNetBSD : public NativeRegisterContextRegisterInfo {
+public:
+  NativeRegisterContextNetBSD(NativeThreadProtocol &native_thread,
+                             uint32_t concrete_frame_idx,
+                             RegisterInfoInterface *reg_info_interface_p);
+
+  // This function is implemented in the NativeRegisterContextNetBSD_* subclasses
+  // to create a new
+  // instance of the host specific NativeRegisterContextNetBSD. The
+  // implementations can't collide
+  // as only one NativeRegisterContextNetBSD_* variant should be compiled into
+  // the final
+  // executable.
+  static NativeRegisterContextNetBSD *
+  CreateHostNativeRegisterContextNetBSD(const ArchSpec &target_arch,
+                                       NativeThreadProtocol &native_thread,
+                                       uint32_t concrete_frame_idx);
+
+protected:
+  lldb::ByteOrder GetByteOrder() const;
+
+  virtual Error ReadGPR();
+
+  virtual Error WriteGPR();
+
+  virtual Error ReadFPR();
+
+  virtual Error WriteFPR();
+
+  virtual void *GetGPRBuffer() { return nullptr; }
+
+  virtual size_t GetGPRSize() {
+    return GetRegisterInfoInterface().GetGPRSize();
+  }
+
+  virtual void *GetFPRBuffer() { return nullptr; }
+
+  virtual void *GetDBRBuffer() { return nullptr; }
+
+  virtual size_t GetFPRSize() { return 0; }
+
+  virtual Error DoReadGPR(void *buf);
+
+  virtual Error DoWriteGPR(void *buf);
+
+  virtual Error DoReadFPR(void *buf);
+
+  virtual Error DoWriteFPR(void *buf);
+
+  virtual NativeProcessNetBSD &GetProcess();
+
+  virtual pid_t GetProcessPid();
+};
+
+} // namespace process_netbsd
+} // namespace lldb_private
+
+#endif // #ifndef lldb_NativeRegisterContextNetBSD_h
