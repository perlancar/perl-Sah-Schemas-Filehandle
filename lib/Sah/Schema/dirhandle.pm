package Sah::Schema::dirhandle;

# DATE
# VERSION

our $schema = ['any', {
    summary => 'Dirhandle',
    'x.perl.coerce_rules' => [
        'From_any::validate_dirhandle',
    ],
}, {}];

1;
# ABSTRACT:
