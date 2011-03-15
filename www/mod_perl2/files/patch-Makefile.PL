--- Makefile.PL.orig	2011-02-07 20:16:43.000000000 +0100
+++ Makefile.PL	2011-03-15 16:32:09.000000000 +0100
@@ -687,11 +687,11 @@
 	cd "$(MODPERL_SRC)" && $(MAKE)
 
 modperl_lib_install:
-	cd "$(MODPERL_SRC)" && $(MAKE) DESTDIR=$(DESTDIR) install
+#	cd "$(MODPERL_SRC)" && $(MAKE) DESTDIR=$(DESTDIR) install
 
 modperl_xs_h_install:
-	@$(MKPATH) $(DESTDIR)$(MODPERL_AP_INCLUDEDIR)
-	$(CP) $(MODPERL_XS_H_FILES) $(DESTDIR)$(MODPERL_AP_INCLUDEDIR)
+#	@$(MKPATH) $(DESTDIR)$(MODPERL_AP_INCLUDEDIR)
+#	$(CP) $(MODPERL_XS_H_FILES) $(DESTDIR)$(MODPERL_AP_INCLUDEDIR)
 
 modperl_src_clean:
 	cd "$(MODPERL_SRC)" && $(MAKE) clean
