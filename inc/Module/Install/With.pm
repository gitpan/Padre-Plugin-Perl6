#line 1
package Module::Install::With;

# See POD at end for docs

use strict;
use Module::Install::Base;

use vars qw{$VERSION $ISCORE @ISA};
BEGIN {
	$VERSION = '0.84';
	$ISCORE  = 1;
	@ISA     = qw{Module::Install::Base};
}

#line 21


#####################################################################
# Installer Target

# Are we targeting ExtUtils::MakeMaker (running as Makefile.PL)
sub eumm {
	!! ($0 =~ /Makefile.PL$/i);
}

# You should not be using this, but we'll keep the hook anyways
sub mb {
	!! ($0 =~ /Build.PL$/i);
}





#####################################################################
# Testing and Configuration Contexts

#line 54

sub interactive {
	# Treat things interactively ONLY based on input
	!! (-t STDIN and ! automated_testing());
}

#line 72

sub automated_testing {
	!! $ENV{AUTOMATED_TESTING};
}

#line 91

sub release_testing {
	!! $ENV{RELEASE_TESTING};
}

sub author_context {
	!! $Module::Install::AUTHOR;
}





#####################################################################
# Operating System Convenience

#line 119

sub win32 {
	!! ($^O eq 'MSWin32');
}

#line 136

sub winlike {
	!! ($^O eq 'MSWin32' or $^O eq 'cygwin');
}

1;

#line 164
