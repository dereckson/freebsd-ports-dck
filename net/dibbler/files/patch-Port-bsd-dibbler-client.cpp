diff --git Port-bsd/dibbler-client.cpp Port-bsd/dibbler-client.cpp
index 1a37b8c..a8be8bb 100644
--- Port-bsd/dibbler-client.cpp
+++ Port-bsd/dibbler-client.cpp
@@ -8,6 +8,9 @@
  */
 
 #include <signal.h>
+#include <string.h>
+#include <strings.h>
+#include <stdlib.h>
 #include "DHCPClient.h"
 #include "Portable.h"
 #include "Logger.h"
