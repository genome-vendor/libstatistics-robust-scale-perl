#!perl -T

use Test::More tests => 4;
use Test::Number::Delta relative => 1e-4;
use Statistics::Robust::Location qw(:all);

my @x = (5,42,58,2,72,5,1,71,42,58,1,52,1,52,1,5,4);

my $tmean = tmean(\@x);
delta_ok( $tmean, 24.36364, 'trimmed mean');

my $median = median(\@x);
delta_ok($median,5,'median');

my $hd = hd(\@x);
delta_ok( $hd, 20.80710, 'Harrell-Davis Estimator');

my $mean = mean(\@x);
delta_ok($mean, 27.76471 , 'Mean');
