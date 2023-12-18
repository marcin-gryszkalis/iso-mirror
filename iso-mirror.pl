#!/usr/bin/perl
use warnings;
use strict;
use feature qw/state signatures say multidimensional/;
use utf8;
use open qw(:std :encoding(UTF-8));

use File::Slurp;
use Data::Dumper;
use FindBin qw($Bin);
use JSON qw(decode_json);
use Config::INI::Reader;
use Version::Compare;

# use List::Util qw/min max first sum sum0 product all any uniq head tail reduce pairs zip mesh/;
# use List::MoreUtils qw/firstidx frequency mode slide minmax/;
# use POSIX qw/ceil floor/;

sub write_file_ok
{
    write_file($_[0], {binmode => ':utf8'}, $_[1]);
}

my $cfg = Config::INI::Reader->read_file("$Bin/rss.ini");
my $rules = Config::INI::Reader->read_file("$Bin/rules.ini");



use Term::Emit qw/:all/;
emit "System parameter updates";
  emit "CLOCK_UTC";
  #...do_something();
  emit_ok;

  emit "NTP Servers";
  #...do_something();
  emit_error;

  emit "DNS Servers";
  #...do_something();
  emit_warn;

  # curl -o "$file" -z "$file" "$uri"