package Sah::Schema::dirhandle;

# DATE
# VERSION

our $schema = ['any', {
    summary => 'Dirhandle',
    'x.perl.coerce_rules' => [
        'validate_dirhandle',
    ],
}, {}];

1;
# ABSTRACT:
