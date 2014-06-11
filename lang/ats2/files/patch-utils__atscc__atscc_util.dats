--- ./utils/atscc/atscc_util.dats.orig	2014-06-10 11:41:23.000000000 +0900
+++ ./utils/atscc/atscc_util.dats	2014-06-11 10:48:05.000000000 +0900
@@ -75,7 +75,7 @@
 
 #define
 ATSCCOMP_DEFAULT "\
-gcc -std=c99 -D_XOPEN_SOURCE \
+cc -std=c99 -D_XOPEN_SOURCE \
 -I${PATSHOME} -I${PATSHOME}/ccomp/runtime \
 -L${PATSHOME}/ccomp/atslib/lib -L${PATSHOME}/ccomp/atslib/lib64 \
 "
