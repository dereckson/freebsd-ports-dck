--- Configure.pl.orig	2021-08-21 13:13:31 UTC
+++ Configure.pl
@@ -11,22 +11,7 @@ use File::Spec;
 use File::Path;
 use FindBin;
 
-BEGIN {
-    # Download / Update submodules
-    my $set_config = !qx{git config nqp.initialized};
-    if ( !-e '3rdparty/nqp-configure/LICENSE' ) {
-        my $code = system($^X, 'tools/build/update-submodules.pl', Cwd::cwd(), @ARGV);
-        exit 1 if $code >> 8 != 0;
-        $set_config = 1;
-    }
-    if ($set_config) {
-        system("git config submodule.recurse true");
-        system("git config nqp.initialized 1");
-    }
-}
-
-use lib ( "$FindBin::Bin/tools/lib",
-    "$FindBin::Bin/3rdparty/nqp-configure/lib", );
+use lib "tools/lib";
 use NQP::Config qw<system_or_die>;
 use NQP::Config::NQP;
 
