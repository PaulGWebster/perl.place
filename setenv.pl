#!/usr/bin/env perl

# Core options
use v5.28;
use warnings;
use strict;
use experimental 'signatures';

# Debugging
use Data::Dumper;

# Core modules
use Cwd;
use Getopt::Long qw(GetOptionsFromArray);

# Arguments for script (GetOpt style, to hash), cannot be blank.
# https://metacpan.org/pod/Getopt::Long#Summary-of-Option-Specifications
my $blah = 'default';
my $script_argument_config     = (
    'about=s',
);

# Entrypoint
exit do {
    my $exit_code = main(\@ARGV);
    if (!defined $exit_code || $exit_code !~ m#^[0-9]+$#) {
        $exit_code = 256;
    }
    $exit_code;
};

# Main
sub main($args_unprocessed) {
    my $enviroment  = %ENV;
    my $arguments   = parse_arguments($args_unprocessed);
    my $script_dir  = Cwd::abs_path();
    my $script_name = $0;           # TODO: This looks terrible, has to 
                                    # be a better way, also this will not 
                                    # work on windows
    my $script_path = join('/',$script_dir,$script_name);

    # Quick test for sanity
    if (!-e $script_path) {
        say STDERR "Path extrapolation to self failed, attempted to access: $script_path";
        return 1;
    }

    say STDERR "Args: ",Dumper($arguments);
    return 0;
}

# Non-main code blocks
sub parse_arguments($args_unprocessed) {
    # A place to store them ...
    my %args_processed;

    my $parse_state   = GetOptionsFromArray(
        $args_unprocessed,
        \%args_processed,
        $script_argument_config
    );

    if (!$parse_state && $parse_state eq '') {
        say STDERR "Error parsing command line options, bailing.";
        exit 1;
    }

    return \%args_processed;
}

