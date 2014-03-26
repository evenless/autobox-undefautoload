package autobox::UndefAutoloadTest;

use Test::Roo;

use lib 'lib', 't/lib';

my $class = "autobox::UndefAutoload";

use autobox::UndefAutoload;

test 'call arbitrary method' => sub {
    is undef->foo, undef;
};

test 'call chained method' => sub {
    is undef->foo->bar, undef;
};

run_me;
done_testing;
