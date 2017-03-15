$NetBSD$

From FreeBSD ports graphics/libGL mesa 13.0.5

# Fix error: no matching constructor for initialization of 'std::vector<const ::llvm::MDNode *>' 
#

--- src/gallium/state_trackers/clover/llvm/metadata.hpp.orig	2017-02-13 11:55:49.000000000 +0000
+++ src/gallium/state_trackers/clover/llvm/metadata.hpp
@@ -42,7 +42,11 @@ namespace clover {
          get_kernel_nodes(const ::llvm::Module &mod) {
             if (const ::llvm::NamedMDNode *n =
                    mod.getNamedMetadata("opencl.kernels"))
+#if defined(__FreeBSD__)
+               return { n->getOperand(0), n->getOperand(n->getNumOperands()) };
+#else
                return { n->op_begin(), n->op_end() };
+#endif
             else
                return {};
          }
