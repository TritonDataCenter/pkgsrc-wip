$NetBSD$

--- components/storage_monitor/storage_monitor_netbsd.cc.orig	2016-11-12 02:51:25.444800290 +0000
+++ components/storage_monitor/storage_monitor_netbsd.cc
@@ -0,0 +1,54 @@
+// Copyright 2014 The Chromium Authors. All rights reserved.
+// Use of this source code is governed by a BSD-style license that can be
+// found in the LICENSE file.
+
+// StorageMonitorNetBSD implementation.
+
+#include "components/storage_monitor/storage_monitor_netbsd.h"
+
+#include <stdio.h>
+
+#include <list>
+
+#include "base/bind.h"
+#include "base/metrics/histogram.h"
+#include "base/process/kill.h"
+#include "base/process/launch.h"
+#include "base/stl_util.h"
+#include "base/strings/string_number_conversions.h"
+#include "base/strings/string_util.h"
+#include "base/strings/utf_string_conversions.h"
+#include "components/storage_monitor/media_storage_util.h"
+#include "components/storage_monitor/removable_device_constants.h"
+#include "components/storage_monitor/storage_info.h"
+
+using content::BrowserThread;
+
+namespace storage_monitor {
+
+namespace {
+
+}  // namespace
+
+StorageMonitorNetBSD::StorageMonitorNetBSD() {
+  DCHECK(BrowserThread::CurrentlyOn(BrowserThread::UI));
+}
+
+StorageMonitorNetBSD::~StorageMonitorNetBSD() {
+  DCHECK(BrowserThread::CurrentlyOn(BrowserThread::UI));
+}
+
+void StorageMonitorNetBSD::Init() {
+}
+
+bool StorageMonitorNetBSD::GetStorageInfoForPath(
+    const base::FilePath& path,
+    StorageInfo* device_info) const {
+  return false; // TODO
+}
+
+StorageMonitor* StorageMonitor::CreateInternal() {
+  return new StorageMonitorNetBSD();
+}
+
+} // namespace storage_monitor
