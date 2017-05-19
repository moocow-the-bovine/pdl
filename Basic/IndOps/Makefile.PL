use strict;
use warnings;
use ExtUtils::MakeMaker;

my $package = ["indops.pd",qw(IndOps PDL::IndOps)];
my %hash = pdlpp_stdargs_int($package);
undef &MY::postamble; # suppress warning
*MY::postamble = sub { pdlpp_postamble_int($package) };
WriteMakefile(%hash);
