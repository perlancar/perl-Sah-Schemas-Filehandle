package Data::Sah::Coerce::perl::any::validate_filehandle;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

sub meta {
    +{
        v => 4,
        might_fail => 1,
        prio => 50,
    };
}

sub coerce {
    my %args = @_;

    my $dt = $args{data_term};

    my $res = {};

    $res->{modules}{'Scalar::Util'} //= 0;
    $res->{expr_match} = '1';
    $res->{expr_coerce} = join(
        '',
        "ref($dt) eq 'GLOB' || (Scalar::Util::blessed($dt) && ($dt)\->isa('IO::Handle')) ? [undef, $dt] : ['Not a filehandle']",
    );
    $res;
}

1;
# ABSTRACT: Validate filehandle

=for Pod::Coverage ^(meta|coerce)$

=head1 DESCRIPTION

This rule checks that data is a glob or an object that isa L<IO::Handle>.
