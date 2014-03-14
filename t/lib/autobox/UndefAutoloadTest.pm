package autobox::UndefAutoloadTest;

use Test::Roo;

use lib 'lib', 't/lib';

my $class = "autobox::UndefAutoload";

use autobox::UndefAutoload;

before setup => sub { use_ok($class); };

test 'returns undef' => sub {
    is undef->foo, undef;
};

test 'returns undef chained' => sub {
    is undef->foo->bar, undef;
};

run_me;
done_testing;
