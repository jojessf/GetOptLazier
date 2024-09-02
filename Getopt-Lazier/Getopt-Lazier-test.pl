#!/usr/bin/perl
use lib "./lib"; use Getopt::Lazier; 
my ($opt, @DARG) = Getopt::Lazier->new(@ARGV); 
use Data::Dumper; print Dumper([$opt, \@DARG])
# perl Getopt-Lazier-test.pl -help a b c d -meow=5345923
