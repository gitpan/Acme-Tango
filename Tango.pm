package Acme::Tango;

$VERSION = "0.04";
use strict; 
use Graphics::RGBManipulate;

sub drink {

	return Graphics::RGBManipulate::tweak(
                       hex => shift,
                       hue => 40
               )

}

1;

__END__

=head1 NAME

Acme::Tango - Turn colours orange

=head1 SYNOPSIS

	use Acme::Tango;
	
	my $hex_string = Acme::Tango::drink('#00bbff');
	
=head1 METHODS

=head2 drink

Given a hex rgb colour string (like: "#aaff4f" or "44f567" or "#fab"),
returns the hex string of the shade of orange with the same I<saturation>
and I<value> values.

=head1 AUTHOR

Pete Sergeant - pete@clueball.com

=head1 SEE ALSO

http://www.tango.com
http://grou.ch/tango.html -- output of colour_swatches.pl

=head1 COPYRIGHT

Copyright (c) 2002 Peter Sergeant. All rights reserved. This program is free
software; you can redistribute it and/or modify it under the same terms
as Perl itself. Tango is someone else's registered trademark - see:
http://www.tango.com

=cut
