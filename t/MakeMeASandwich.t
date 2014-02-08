#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;
use DDG::Test::Goodie;

zci answer_type => 'makemeasandwich';

ddg_goodie_test(
    [
        'DDG::Goodie::MakeMeASandwich'
    ],
    'make me a sandwich' =>
        test_zci(
            'What? Make it yourself.',
            html => 'What? Make it yourself. <br>(<a href="http://xkcd.com/149/">xkcd</a>)'
        ),
    'sudo make me a sandwich' =>
        test_zci(
            'Okay.',
            html => 'Okay. <br>(<a href="http://xkcd.com/149/">xkcd</a>)'
        ),
    'blahblah make me a sandwich' => undef,
    '0 make me a sandwich' => undef,  
);

done_testing;
