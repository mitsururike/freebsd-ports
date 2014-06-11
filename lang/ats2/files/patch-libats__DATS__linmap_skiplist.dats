--- ./libats/DATS/linmap_skiplist.dats.orig	2014-06-10 11:41:23.000000000 +0900
+++ ./libats/DATS/linmap_skiplist.dats	2014-06-11 10:45:31.000000000 +0900
@@ -57,7 +57,7 @@
 
 %{^
 typedef long int lint ;
-extern lint time (void*) ; // time.h
+extern time_t time (time_t *) ; // time.h
 extern void srand48 (lint) ; // stdlib.h
 %}
 implement
