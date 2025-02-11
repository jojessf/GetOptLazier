#!perl
use 5.006;
use strict;
use warnings;
use Test::More tests => 3;

BEGIN {
   use_ok( 'Getopt::Lazier' );
}

my @args = ( '-a1', 'opt1', '--a2', 'opt2', '-a3=val', '--a4=val', 'opt3', '--', '-opt4', '--opt5');

my ($opt,@DARG) = Getopt::Lazier->new(@args);

is_deeply($opt,{'a1'=>1,'a2'=>1,'a3'=>'val','a4'=>'val'},"Options Test");
is_deeply(\@DARG,['opt1','opt2','opt3','-opt4','--opt5'],"Argument Test");
diag( "Testing Getopt::Lazier $Getopt::Lazier::VERSION, Perl $], $^X" );
