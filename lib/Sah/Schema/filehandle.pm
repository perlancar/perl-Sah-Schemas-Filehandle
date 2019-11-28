package Sah::Schema::filehandle;

# DATE
# VERSION

our $schema = ['any', {
    summary => 'Filehandle',
    'x.perl.coerce_rules' => [
        'From_any::validate_filehandle',
    ],
}, {}];

1;
# ABSTRACT:
