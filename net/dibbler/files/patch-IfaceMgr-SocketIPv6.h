diff --git IfaceMgr/SocketIPv6.h IfaceMgr/SocketIPv6.h
index 892a52c..cad1035 100644
--- IfaceMgr/SocketIPv6.h
+++ IfaceMgr/SocketIPv6.h
@@ -18,6 +18,7 @@ class TIfaceSocket;
 
 #include <iostream>
 #include <string>
+#include <sys/select.h>
 
 #include "Portable.h"
 #include "DHCPConst.h"
