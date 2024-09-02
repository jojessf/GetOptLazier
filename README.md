# GetOptLazier
The laziest perl arg parser around

# cpan
now in cpan! \
`cpanm Getopt::Lazier`

# Synopsis

`my ($opt, @DARG) = Getopt::Lazier->new(@ARGV);`

# Examples

```
echo '
  use lib "./lib"; use Getopt::Lazier; 
  my ($opt, @DARG) = Getopt::Lazier->new(@ARGV); 
  use Data::Dumper; print Dumper([$opt, \@DARG])
' > lazyscript.pl
perl lazyscript.pl -help a b c d -meow=5345923
```

![demo](img/202407191825GetoptLazier.png)
