package Acme::Tango;

$VERSION = "0.05";
use strict; 
use Graphics::RGBManipulate;

sub drink {

	my ( $hex, $flavour ) = @_;

	my $hue = '40'; # That'll be Orange as default
	$hue = '60' if $flavour eq 'lemon';
	$hue = '105' if $flavour eq 'apple';

	return Graphics::RGBManipulate::tweak(
                       hex => $hex,
                       hue => $hue 
               )

}

1;

__END__

=head1 NAME

Acme::Tango - Turn colours orange

=head1 SYNOPSIS

	use Acme::Tango;
	
	my $hex_string = Acme::Tango::drink('#00bbff');

 # But then also

  my $hex_string = Acme::Tango::drink('#00bbcc', 'apple');
		
=head1 METHODS

=head2 drink

Given a hex rgb colour string (like: "#aaff4f" or "44f567" or "#fab"),
returns the hex string of the shade of orange with the same I<saturation>
and I<value> values. Unless you specifically specify that Apple or Lemon
tango are what you're after, by passing C<apple> or C<lemon> as the 
second argument. See:

L<https://rt.cpan.org/Ticket/Display.html?id=6730>

=head1 AUTHOR

Pete Sergeant - pete@clueball.com

=head1 SEE ALSO

http://www.tango.com
http://cou.ch/tango.html -- output of colour_swatches.pl

=head1 COPYRIGHT

Copyright (c) 2002-2005 Peter Sergeant. All rights reserved. This program is free
software; you can redistribute it and/or modify it under the same terms
as Perl itself. Tango is someone else's registered trademark - see:
http://www.tango.com

=cut
