diff --git Port-bsd/dibbler-relay.cpp Port-bsd/dibbler-relay.cpp
index 51bf923..16cfc6b 100644
--- Port-bsd/dibbler-relay.cpp
+++ Port-bsd/dibbler-relay.cpp
@@ -10,6 +10,8 @@
  */
 
 #include <signal.h>
+#include <string.h>
+#include <strings.h>
 #include "DHCPRelay.h"
 #include "Portable.h"
 #include "Logger.h"
