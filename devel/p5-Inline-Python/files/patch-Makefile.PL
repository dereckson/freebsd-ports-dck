--- Makefile.PL.orig	2010-06-28 10:03:55.000000000 +0200
+++ Makefile.PL	2011-04-02 02:49:02.000000000 +0200
@@ -14,26 +14,9 @@
 #============================================================================
 # What python are we going to try?
 #============================================================================
-my @pythons;
-my $sep = $^O eq 'MSWin32' ? ";" : ":";
-for $p (split /$sep/, $ENV{PATH}) {
-    $p =~ s/^~/$ENV{HOME}/;
-    $p .= "/python";
-    push @pythons, { path => $p } if -f $p && -x $p;
-}
-
-# Keep them in PATH order.
-#@pythons = sort { $a->{path} cmp $b->{path} } @pythons;
-
-my $num = 1;
-print "Found these python executables on your PATH:\n";
-print $num++ . ". " . $_->{path} . "\n" for @pythons;
-
-my $sel = prompt("Use which?", '1');
-$sel = $pythons[$sel-1] if $sel =~ /^\d+$/;
-$sel = { path => $sel } unless ref $sel eq 'HASH';
 
-print "Using $sel->{path}\n";
+my $sel;
+$sel->{path} = "%%PYTHON_CMD%%";
 
 #============================================================================
 # Interrogate the python interpreter (or the user) for required flags
