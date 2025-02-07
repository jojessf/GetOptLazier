#!perl
use 5.006;
use strict;
use warnings;
use Test::More tests => 3;

BEGIN {
   @main::ARGV = ( '-a1', 'opt1', '--a2', 'opt2', '-a3=val', '--a4=val', 'opt3', '--', '-opt4', '--opt5');
   use_ok( 'Getopt::Lazier', 'opt' );
}

{
   no strict;
   no warnings;
   is_deeply($opt,{'a1'=>1,'a2'=>1,'a3'=>'val','a4'=>'val'},"Options Test");
}
is_deeply(\@main::ARGV,['opt1','opt2','opt3','-opt4','--opt5'],"Argument Test");
diag( "Testing Getopt::Lazier $Getopt::Lazier::VERSION, Perl $], $^X" );
