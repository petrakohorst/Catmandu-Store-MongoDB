use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name => 'Catmandu::Store::MongoDB',
    license => 'perl',
    dist_author => [
        'Nicolas Steenlant <nicolas.steenlant@ugent.be>'
    ],
    dist_version_from => 'lib/Catmandu/Store/MongoDB.pm',
    build_requires => {
        'Software::License' => 0,
        'Test::Exception' => 0,
        'Test::More' => 0,
    },
    requires => {
        'perl' => '5.10.0',
        'Catmandu' => '0.01',
        'MongoDB' => '0.42',
        'Moo' => '0.009011',
    },
    add_to_cleanup => [qw(
        Catmandu-Store-MongoDB-*
    )],
    create_makefile_pl => 'traditional',
    create_license => 1,
);

$builder->create_build_script;
