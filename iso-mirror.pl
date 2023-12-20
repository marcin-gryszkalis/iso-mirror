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
use YAML ();
use Config::INI::Reader;
use Version::Compare;

# use List::Util qw/min max first sum sum0 product all any uniq head tail reduce pairs zip mesh/;
# use List::MoreUtils qw/firstidx frequency mode slide minmax/;
# use POSIX qw/ceil floor/;

sub write_file_ok
{
    write_file($_[0], {binmode => ':utf8'}, $_[1]);
}

my $iso = YAML::LoadFile("$Bin/iso.yaml");
print Dumper $iso;


use Term::Emit ":all", {-color => 1};
Term::Emit::setopts(-fh => *LOG);

emit "Skrawning all xyzons";
print "\nHey, look at me, I'm printed output!\n";
Term::Emit::setopts (-pos => 0);  # Tell where we left the cursor

# emit_prog - progress
emit_fail {-reason => $fail_reason}

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