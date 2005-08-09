#/usr/bin/perl

# Creates a set of HTML colour swatches to show
# what Acme::Tango does.


use strict;
use Acme::Tango;

print qq!<html><head><title>Acme::Tango Example</title></head><body><table>!;

for my $flavour (qw(orange lemon apple)) {

	print "<tr><td colspan = '2'>$flavour</td></tr>\n";

for (1..10) {

	# Create colour
	my ($red, $green, $blue) = ( 
		int(rand(255)), 
		int(rand(255)), 
		int(rand(255)),
	);

	# Make colour a hex string
	my $hex_string = "#" . 
		sprintf("%02X", $red) .
		sprintf("%02X", $green) .
		sprintf("%02X", $blue);

	# Tango it
	my $hex_orange = Acme::Tango::drink($hex_string, $flavour);

	# Print out a line with it
	print qq!
	<tr>
		<td bgcolor = "$hex_string">$hex_string</td>
		<td bgcolor = "$hex_orange">$hex_orange</td>
	</tr>!;

}
}	

print qq!</table></body></html>\n!;
