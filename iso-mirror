#!/usr/bin/perl
# https://github.com/marcin-gryszkalis/iso-mirror
my $VERSION  = '0.1';

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
use Pod::Usage;
use Getopt::Auto;
our %options;


# use List::Util qw/min max first sum sum0 product all any uniq head tail reduce pairs zip mesh/;
# use List::MoreUtils qw/firstidx frequency mode slide minmax/;
# use POSIX qw/ceil floor/;

sub write_file_ok
{
    write_file($_[0], {binmode => ':utf8'}, $_[1]);
}

my $iso = YAML::LoadFile("$Bin/iso.yaml");
my $cfg = YAML::LoadFile("$Bin/cfg.yaml");
print Dumper $iso;


use Term::Emit ":all", {-color => 1};
# Term::Emit::setopts(-fh => *LOG);

emit "Skrawning all xyzons";
print "\nHey, look at me, I'm printed output!\n";
Term::Emit::setopts (-pos => 0);  # Tell where we left the cursor

# emit_prog - progress
emit_fail {-reason => "dead body"};

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

sub usage {
    pod2usage( -verbose => 2 );
    exit 0;
}


my $count;
sub add { $count += shift @ARGV; }
$count += $options{'--inc'};
print "Count: $count\n";

=pod

=head1 NAME

iso-mirror -- mirror set of .iso files for use in multiboot environment like I<Ventoy>

=head1 SYNOPSIS

iso-mirror [B<--config>=I<file>] [B<--dry-run>] [B<--version>]

iso-mirror B<--help>

=head1 DESCRIPTION

B<iso-mirror> is a wrapper


=head2 -c --config=file    specify location of `config.yaml` file

=head2 -n --dry-run        check pages and show what would be downloaded, also show what would be deleted when `delete-obsolete` configuration option is enabled

The integer argument is not checked.

=head1 EXIT STATUS

In case of errors downloading something B<iso-mirror> will exit with status 1.
In case of fatal errors (like syntax error in configuration file) exit code will be 255.

=head1 AUTHOR

Marcin Gryszalis <mg@fork.pl>

=head1 COPYRIGHT AND LICENSE

=head1 SEE ALSO

=cut

# pod2man -c "iso-mirror manual" iso-mirror > iso-mirror.1