
use Test::More tests => 28;

	use strict;
	use warnings;

	use_ok( 'Acme::Tango' );
	
	my @flavours = qw( orange lemon apple );

for my $test (

# Color to pass in, orange,   lemon,    apple     description
[ 'FF0000', 		  'FFAA00', 'FFFF00', '40FF00', 'Red' ],
[ 'FF0000',       'FFAA00', 'FFFF00', '40FF00', 'Yellow' ],
[ '00FF00',       'FFAA00', 'FFFF00', '40FF00', 'Green' ],
[ '00B2EB',       'EB9D00', 'EBEB00', '3BEB00', 'Dark Cyan' ],
[ '000000',       '000000', '000000', '000000', 'Black' ],
[ 'FFFFFF',       'FFFFFF', 'FFFFFF', 'FFFFFF', 'White' ],
[ 'fff',          'FFFFFF', 'FFFFFF', 'FFFFFF', 'Red, three char form' ],
[ '#0f0',         '#FFAA00', '#FFFF00', '#40FF00', 'Green, three char form with hash' ],
[ '#FF0000',      '#FFAA00', '#FFFF00', '#40FF00', 'Yellow, with hash' ],

) {

	my $i;

	for ( @flavours ) {
	
		$i++;
		is( Acme::Tango::drink( $test->[0], $_ ), scalar $test->[$i], "$_ ok for test '" . $test->[4] . "'" )	

	}

}

