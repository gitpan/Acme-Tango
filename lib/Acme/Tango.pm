package Acme::Tango;

$VERSION = "0.06";
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

=head1 EXAMPLE

C<perl eg/colour_swatches.pl> should give you an HTML segment to look
at. If you're reading this page in an HTML-compatible POD reader, you
can see the results below:

=begin html

<table bgcolor = '#000000'><tr><td><h1><font color = '#ffffff'>orange</font></h1><table>

		<tr>
			<td bgcolor = "#FFFFFF">FFFFFF</td>
			<td bgcolor = "#FFFFFF">FFFFFF</td>
		</tr>
		<tr>
			<td bgcolor = "#FFFFCC">FFFFCC</td>

			<td bgcolor = "#FFEECC">FFEECC</td>
		</tr>
		<tr>
			<td bgcolor = "#FFFF99">FFFF99</td>
			<td bgcolor = "#FFDD99">FFDD99</td>
		</tr>
		<tr>

			<td bgcolor = "#FFFF66">FFFF66</td>
			<td bgcolor = "#FFCC66">FFCC66</td>
		</tr>
		<tr>
			<td bgcolor = "#FFFF33">FFFF33</td>
			<td bgcolor = "#FFBB33">FFBB33</td>
		</tr>

		<tr>
			<td bgcolor = "#FFFF00">FFFF00</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>
			<td bgcolor = "#FFCCFF">FFCCFF</td>
			<td bgcolor = "#FFEECC">FFEECC</td>

		</tr>
		<tr>
			<td bgcolor = "#FFCCCC">FFCCCC</td>
			<td bgcolor = "#FFEECC">FFEECC</td>
		</tr>
		<tr>
			<td bgcolor = "#FFCC99">FFCC99</td>

			<td bgcolor = "#FFDD99">FFDD99</td>
		</tr>
		<tr>
			<td bgcolor = "#FFCC66">FFCC66</td>
			<td bgcolor = "#FFCC66">FFCC66</td>
		</tr>
		<tr>

			<td bgcolor = "#FFCC33">FFCC33</td>
			<td bgcolor = "#FFBB33">FFBB33</td>
		</tr>
		<tr>
			<td bgcolor = "#FFCC00">FFCC00</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>

		<tr>
			<td bgcolor = "#FF99FF">FF99FF</td>
			<td bgcolor = "#FFDD99">FFDD99</td>
		</tr>
		<tr>
			<td bgcolor = "#FF99CC">FF99CC</td>
			<td bgcolor = "#FFDD99">FFDD99</td>

		</tr>
		<tr>
			<td bgcolor = "#FF9999">FF9999</td>
			<td bgcolor = "#FFDD99">FFDD99</td>
		</tr>
		<tr>
			<td bgcolor = "#FF9966">FF9966</td>

			<td bgcolor = "#FFCC66">FFCC66</td>
		</tr>
		<tr>
			<td bgcolor = "#FF9933">FF9933</td>
			<td bgcolor = "#FFBB33">FFBB33</td>
		</tr>
		<tr>

			<td bgcolor = "#FF9900">FF9900</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>
			<td bgcolor = "#FF66FF">FF66FF</td>
			<td bgcolor = "#FFCC66">FFCC66</td>
		</tr>

		<tr>
			<td bgcolor = "#FF66CC">FF66CC</td>
			<td bgcolor = "#FFCC66">FFCC66</td>
		</tr>
		<tr>
			<td bgcolor = "#FF6699">FF6699</td>
			<td bgcolor = "#FFCC66">FFCC66</td>

		</tr>
		<tr>
			<td bgcolor = "#FF6666">FF6666</td>
			<td bgcolor = "#FFCC66">FFCC66</td>
		</tr>
		<tr>
			<td bgcolor = "#FF6633">FF6633</td>

			<td bgcolor = "#FFBB33">FFBB33</td>
		</tr>
		<tr>
			<td bgcolor = "#FF6600">FF6600</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>

			<td bgcolor = "#FF33FF">FF33FF</td>
			<td bgcolor = "#FFBB33">FFBB33</td>
		</tr>
		<tr>
			<td bgcolor = "#FF33CC">FF33CC</td>
			<td bgcolor = "#FFBB33">FFBB33</td>
		</tr>

		<tr>
			<td bgcolor = "#FF3399">FF3399</td>
			<td bgcolor = "#FFBB33">FFBB33</td>
		</tr>
		<tr>
			<td bgcolor = "#FF3366">FF3366</td>
			<td bgcolor = "#FFBB33">FFBB33</td>

		</tr>
		<tr>
			<td bgcolor = "#FF3333">FF3333</td>
			<td bgcolor = "#FFBB33">FFBB33</td>
		</tr>
		<tr>
			<td bgcolor = "#FF3300">FF3300</td>

			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>
			<td bgcolor = "#FF00FF">FF00FF</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>

			<td bgcolor = "#FF00CC">FF00CC</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>
			<td bgcolor = "#FF0099">FF0099</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>

		<tr>
			<td bgcolor = "#FF0066">FF0066</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>
			<td bgcolor = "#FF0033">FF0033</td>
			<td bgcolor = "#FFAA00">FFAA00</td>

		</tr>
		<tr>
			<td bgcolor = "#FF0000">FF0000</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>
			<td bgcolor = "#CCFFFF">CCFFFF</td>

			<td bgcolor = "#FFEECC">FFEECC</td>
		</tr>
		<tr>
			<td bgcolor = "#CCFFCC">CCFFCC</td>
			<td bgcolor = "#FFEECC">FFEECC</td>
		</tr>
		<tr>

			<td bgcolor = "#CCFF99">CCFF99</td>
			<td bgcolor = "#FFDD99">FFDD99</td>
		</tr>
		<tr>
			<td bgcolor = "#CCFF66">CCFF66</td>
			<td bgcolor = "#FFCC66">FFCC66</td>
		</tr>

		<tr>
			<td bgcolor = "#CCFF33">CCFF33</td>
			<td bgcolor = "#FFBB33">FFBB33</td>
		</tr>
		<tr>
			<td bgcolor = "#CCFF00">CCFF00</td>
			<td bgcolor = "#FFAA00">FFAA00</td>

		</tr>
		<tr>
			<td bgcolor = "#CCCCFF">CCCCFF</td>
			<td bgcolor = "#FFEECC">FFEECC</td>
		</tr>
		<tr>
			<td bgcolor = "#CCCCCC">CCCCCC</td>

			<td bgcolor = "#CCCCCC">CCCCCC</td>
		</tr>
		<tr>
			<td bgcolor = "#CCCC99">CCCC99</td>
			<td bgcolor = "#CCBB99">CCBB99</td>
		</tr>
		<tr>

			<td bgcolor = "#CCCC66">CCCC66</td>
			<td bgcolor = "#CCAA66">CCAA66</td>
		</tr>
		<tr>
			<td bgcolor = "#CCCC33">CCCC33</td>
			<td bgcolor = "#CC9933">CC9933</td>
		</tr>

		<tr>
			<td bgcolor = "#CCCC00">CCCC00</td>
			<td bgcolor = "#CC8800">CC8800</td>
		</tr>
		<tr>
			<td bgcolor = "#CC99FF">CC99FF</td>
			<td bgcolor = "#FFDD99">FFDD99</td>

		</tr>
		<tr>
			<td bgcolor = "#CC99CC">CC99CC</td>
			<td bgcolor = "#CCBB99">CCBB99</td>
		</tr>
		<tr>
			<td bgcolor = "#CC9999">CC9999</td>

			<td bgcolor = "#CCBB99">CCBB99</td>
		</tr>
		<tr>
			<td bgcolor = "#CC9966">CC9966</td>
			<td bgcolor = "#CCAA66">CCAA66</td>
		</tr>
		<tr>

			<td bgcolor = "#CC9933">CC9933</td>
			<td bgcolor = "#CC9933">CC9933</td>
		</tr>
		<tr>
			<td bgcolor = "#CC9900">CC9900</td>
			<td bgcolor = "#CC8800">CC8800</td>
		</tr>

		<tr>
			<td bgcolor = "#CC66FF">CC66FF</td>
			<td bgcolor = "#FFCC66">FFCC66</td>
		</tr>
		<tr>
			<td bgcolor = "#CC66CC">CC66CC</td>
			<td bgcolor = "#CCAA66">CCAA66</td>

		</tr>
		<tr>
			<td bgcolor = "#CC6699">CC6699</td>
			<td bgcolor = "#CCAA66">CCAA66</td>
		</tr>
		<tr>
			<td bgcolor = "#CC6666">CC6666</td>

			<td bgcolor = "#CCAA66">CCAA66</td>
		</tr>
		<tr>
			<td bgcolor = "#CC6633">CC6633</td>
			<td bgcolor = "#CC9933">CC9933</td>
		</tr>
		<tr>

			<td bgcolor = "#CC6600">CC6600</td>
			<td bgcolor = "#CC8800">CC8800</td>
		</tr>
		<tr>
			<td bgcolor = "#CC33FF">CC33FF</td>
			<td bgcolor = "#FFBB33">FFBB33</td>
		</tr>

		<tr>
			<td bgcolor = "#CC33CC">CC33CC</td>
			<td bgcolor = "#CC9933">CC9933</td>
		</tr>
		<tr>
			<td bgcolor = "#CC3399">CC3399</td>
			<td bgcolor = "#CC9933">CC9933</td>

		</tr>
		<tr>
			<td bgcolor = "#CC3366">CC3366</td>
			<td bgcolor = "#CC9933">CC9933</td>
		</tr>
		<tr>
			<td bgcolor = "#CC3333">CC3333</td>

			<td bgcolor = "#CC9933">CC9933</td>
		</tr>
		<tr>
			<td bgcolor = "#CC3300">CC3300</td>
			<td bgcolor = "#CC8800">CC8800</td>
		</tr>
		<tr>

			<td bgcolor = "#CC00FF">CC00FF</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>
			<td bgcolor = "#CC00CC">CC00CC</td>
			<td bgcolor = "#CC8800">CC8800</td>
		</tr>

		<tr>
			<td bgcolor = "#CC0099">CC0099</td>
			<td bgcolor = "#CC8800">CC8800</td>
		</tr>
		<tr>
			<td bgcolor = "#CC0066">CC0066</td>
			<td bgcolor = "#CC8800">CC8800</td>

		</tr>
		<tr>
			<td bgcolor = "#CC0033">CC0033</td>
			<td bgcolor = "#CC8800">CC8800</td>
		</tr>
		<tr>
			<td bgcolor = "#CC0000">CC0000</td>

			<td bgcolor = "#CC8800">CC8800</td>
		</tr>
		<tr>
			<td bgcolor = "#99FFFF">99FFFF</td>
			<td bgcolor = "#FFDD99">FFDD99</td>
		</tr>
		<tr>

			<td bgcolor = "#99FFCC">99FFCC</td>
			<td bgcolor = "#FFDD99">FFDD99</td>
		</tr>
		<tr>
			<td bgcolor = "#99FF99">99FF99</td>
			<td bgcolor = "#FFDD99">FFDD99</td>
		</tr>

		<tr>
			<td bgcolor = "#99FF66">99FF66</td>
			<td bgcolor = "#FFCC66">FFCC66</td>
		</tr>
		<tr>
			<td bgcolor = "#99FF33">99FF33</td>
			<td bgcolor = "#FFBB33">FFBB33</td>

		</tr>
		<tr>
			<td bgcolor = "#99FF00">99FF00</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>
			<td bgcolor = "#99CCFF">99CCFF</td>

			<td bgcolor = "#FFDD99">FFDD99</td>
		</tr>
		<tr>
			<td bgcolor = "#99CCCC">99CCCC</td>
			<td bgcolor = "#CCBB99">CCBB99</td>
		</tr>
		<tr>

			<td bgcolor = "#99CC99">99CC99</td>
			<td bgcolor = "#CCBB99">CCBB99</td>
		</tr>
		<tr>
			<td bgcolor = "#99CC66">99CC66</td>
			<td bgcolor = "#CCAA66">CCAA66</td>
		</tr>

		<tr>
			<td bgcolor = "#99CC33">99CC33</td>
			<td bgcolor = "#CC9933">CC9933</td>
		</tr>
		<tr>
			<td bgcolor = "#99CC00">99CC00</td>
			<td bgcolor = "#CC8800">CC8800</td>

		</tr>
		<tr>
			<td bgcolor = "#9999FF">9999FF</td>
			<td bgcolor = "#FFDD99">FFDD99</td>
		</tr>
		<tr>
			<td bgcolor = "#9999CC">9999CC</td>

			<td bgcolor = "#CCBB99">CCBB99</td>
		</tr>
		<tr>
			<td bgcolor = "#999999">999999</td>
			<td bgcolor = "#999999">999999</td>
		</tr>
		<tr>

			<td bgcolor = "#999966">999966</td>
			<td bgcolor = "#998866">998866</td>
		</tr>
		<tr>
			<td bgcolor = "#999933">999933</td>
			<td bgcolor = "#997733">997733</td>
		</tr>

		<tr>
			<td bgcolor = "#999900">999900</td>
			<td bgcolor = "#996600">996600</td>
		</tr>
		<tr>
			<td bgcolor = "#9966FF">9966FF</td>
			<td bgcolor = "#FFCC66">FFCC66</td>

		</tr>
		<tr>
			<td bgcolor = "#9966CC">9966CC</td>
			<td bgcolor = "#CCAA66">CCAA66</td>
		</tr>
		<tr>
			<td bgcolor = "#996699">996699</td>

			<td bgcolor = "#998866">998866</td>
		</tr>
		<tr>
			<td bgcolor = "#996666">996666</td>
			<td bgcolor = "#998866">998866</td>
		</tr>
		<tr>

			<td bgcolor = "#996633">996633</td>
			<td bgcolor = "#997733">997733</td>
		</tr>
		<tr>
			<td bgcolor = "#996600">996600</td>
			<td bgcolor = "#996600">996600</td>
		</tr>

		<tr>
			<td bgcolor = "#9933FF">9933FF</td>
			<td bgcolor = "#FFBB33">FFBB33</td>
		</tr>
		<tr>
			<td bgcolor = "#9933CC">9933CC</td>
			<td bgcolor = "#CC9933">CC9933</td>

		</tr>
		<tr>
			<td bgcolor = "#993399">993399</td>
			<td bgcolor = "#997733">997733</td>
		</tr>
		<tr>
			<td bgcolor = "#993366">993366</td>

			<td bgcolor = "#997733">997733</td>
		</tr>
		<tr>
			<td bgcolor = "#993333">993333</td>
			<td bgcolor = "#997733">997733</td>
		</tr>
		<tr>

			<td bgcolor = "#993300">993300</td>
			<td bgcolor = "#996600">996600</td>
		</tr>
		<tr>
			<td bgcolor = "#9900FF">9900FF</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>

		<tr>
			<td bgcolor = "#9900CC">9900CC</td>
			<td bgcolor = "#CC8800">CC8800</td>
		</tr>
		<tr>
			<td bgcolor = "#990099">990099</td>
			<td bgcolor = "#996600">996600</td>

		</tr>
		<tr>
			<td bgcolor = "#990066">990066</td>
			<td bgcolor = "#996600">996600</td>
		</tr>
		<tr>
			<td bgcolor = "#990033">990033</td>

			<td bgcolor = "#996600">996600</td>
		</tr>
		<tr>
			<td bgcolor = "#990000">990000</td>
			<td bgcolor = "#996600">996600</td>
		</tr>
		<tr>

			<td bgcolor = "#66FFFF">66FFFF</td>
			<td bgcolor = "#FFCC66">FFCC66</td>
		</tr>
		<tr>
			<td bgcolor = "#66FFCC">66FFCC</td>
			<td bgcolor = "#FFCC66">FFCC66</td>
		</tr>

		<tr>
			<td bgcolor = "#66FF99">66FF99</td>
			<td bgcolor = "#FFCC66">FFCC66</td>
		</tr>
		<tr>
			<td bgcolor = "#66FF66">66FF66</td>
			<td bgcolor = "#FFCC66">FFCC66</td>

		</tr>
		<tr>
			<td bgcolor = "#66FF33">66FF33</td>
			<td bgcolor = "#FFBB33">FFBB33</td>
		</tr>
		<tr>
			<td bgcolor = "#66FF00">66FF00</td>

			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>
			<td bgcolor = "#66CCFF">66CCFF</td>
			<td bgcolor = "#FFCC66">FFCC66</td>
		</tr>
		<tr>

			<td bgcolor = "#66CCCC">66CCCC</td>
			<td bgcolor = "#CCAA66">CCAA66</td>
		</tr>
		<tr>
			<td bgcolor = "#66CC99">66CC99</td>
			<td bgcolor = "#CCAA66">CCAA66</td>
		</tr>

		<tr>
			<td bgcolor = "#66CC66">66CC66</td>
			<td bgcolor = "#CCAA66">CCAA66</td>
		</tr>
		<tr>
			<td bgcolor = "#66CC33">66CC33</td>
			<td bgcolor = "#CC9933">CC9933</td>

		</tr>
		<tr>
			<td bgcolor = "#66CC00">66CC00</td>
			<td bgcolor = "#CC8800">CC8800</td>
		</tr>
		<tr>
			<td bgcolor = "#6699FF">6699FF</td>

			<td bgcolor = "#FFCC66">FFCC66</td>
		</tr>
		<tr>
			<td bgcolor = "#6699CC">6699CC</td>
			<td bgcolor = "#CCAA66">CCAA66</td>
		</tr>
		<tr>

			<td bgcolor = "#669999">669999</td>
			<td bgcolor = "#998866">998866</td>
		</tr>
		<tr>
			<td bgcolor = "#669966">669966</td>
			<td bgcolor = "#998866">998866</td>
		</tr>

		<tr>
			<td bgcolor = "#669933">669933</td>
			<td bgcolor = "#997733">997733</td>
		</tr>
		<tr>
			<td bgcolor = "#669900">669900</td>
			<td bgcolor = "#996600">996600</td>

		</tr>
		<tr>
			<td bgcolor = "#6666FF">6666FF</td>
			<td bgcolor = "#FFCC66">FFCC66</td>
		</tr>
		<tr>
			<td bgcolor = "#6666CC">6666CC</td>

			<td bgcolor = "#CCAA66">CCAA66</td>
		</tr>
		<tr>
			<td bgcolor = "#666699">666699</td>
			<td bgcolor = "#998866">998866</td>
		</tr>
		<tr>

			<td bgcolor = "#666666">666666</td>
			<td bgcolor = "#666666">666666</td>
		</tr>
		<tr>
			<td bgcolor = "#666633">666633</td>
			<td bgcolor = "#665533">665533</td>
		</tr>

		<tr>
			<td bgcolor = "#666600">666600</td>
			<td bgcolor = "#664400">664400</td>
		</tr>
		<tr>
			<td bgcolor = "#6633FF">6633FF</td>
			<td bgcolor = "#FFBB33">FFBB33</td>

		</tr>
		<tr>
			<td bgcolor = "#6633CC">6633CC</td>
			<td bgcolor = "#CC9933">CC9933</td>
		</tr>
		<tr>
			<td bgcolor = "#663399">663399</td>

			<td bgcolor = "#997733">997733</td>
		</tr>
		<tr>
			<td bgcolor = "#663366">663366</td>
			<td bgcolor = "#665533">665533</td>
		</tr>
		<tr>

			<td bgcolor = "#663333">663333</td>
			<td bgcolor = "#665533">665533</td>
		</tr>
		<tr>
			<td bgcolor = "#663300">663300</td>
			<td bgcolor = "#664400">664400</td>
		</tr>

		<tr>
			<td bgcolor = "#6600FF">6600FF</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>
			<td bgcolor = "#6600CC">6600CC</td>
			<td bgcolor = "#CC8800">CC8800</td>

		</tr>
		<tr>
			<td bgcolor = "#660099">660099</td>
			<td bgcolor = "#996600">996600</td>
		</tr>
		<tr>
			<td bgcolor = "#660066">660066</td>

			<td bgcolor = "#664400">664400</td>
		</tr>
		<tr>
			<td bgcolor = "#660033">660033</td>
			<td bgcolor = "#664400">664400</td>
		</tr>
		<tr>

			<td bgcolor = "#660000">660000</td>
			<td bgcolor = "#664400">664400</td>
		</tr>
		<tr>
			<td bgcolor = "#33FFFF">33FFFF</td>
			<td bgcolor = "#FFBB33">FFBB33</td>
		</tr>

		<tr>
			<td bgcolor = "#33FFCC">33FFCC</td>
			<td bgcolor = "#FFBB33">FFBB33</td>
		</tr>
		<tr>
			<td bgcolor = "#33FF99">33FF99</td>
			<td bgcolor = "#FFBB33">FFBB33</td>

		</tr>
		<tr>
			<td bgcolor = "#33FF66">33FF66</td>
			<td bgcolor = "#FFBB33">FFBB33</td>
		</tr>
		<tr>
			<td bgcolor = "#33FF33">33FF33</td>

			<td bgcolor = "#FFBB33">FFBB33</td>
		</tr>
		<tr>
			<td bgcolor = "#33FF00">33FF00</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>

			<td bgcolor = "#33CCFF">33CCFF</td>
			<td bgcolor = "#FFBB33">FFBB33</td>
		</tr>
		<tr>
			<td bgcolor = "#33CCCC">33CCCC</td>
			<td bgcolor = "#CC9933">CC9933</td>
		</tr>

		<tr>
			<td bgcolor = "#33CC99">33CC99</td>
			<td bgcolor = "#CC9933">CC9933</td>
		</tr>
		<tr>
			<td bgcolor = "#33CC66">33CC66</td>
			<td bgcolor = "#CC9933">CC9933</td>

		</tr>
		<tr>
			<td bgcolor = "#33CC33">33CC33</td>
			<td bgcolor = "#CC9933">CC9933</td>
		</tr>
		<tr>
			<td bgcolor = "#33CC00">33CC00</td>

			<td bgcolor = "#CC8800">CC8800</td>
		</tr>
		<tr>
			<td bgcolor = "#3399FF">3399FF</td>
			<td bgcolor = "#FFBB33">FFBB33</td>
		</tr>
		<tr>

			<td bgcolor = "#3399CC">3399CC</td>
			<td bgcolor = "#CC9933">CC9933</td>
		</tr>
		<tr>
			<td bgcolor = "#339999">339999</td>
			<td bgcolor = "#997733">997733</td>
		</tr>

		<tr>
			<td bgcolor = "#339966">339966</td>
			<td bgcolor = "#997733">997733</td>
		</tr>
		<tr>
			<td bgcolor = "#339933">339933</td>
			<td bgcolor = "#997733">997733</td>

		</tr>
		<tr>
			<td bgcolor = "#339900">339900</td>
			<td bgcolor = "#996600">996600</td>
		</tr>
		<tr>
			<td bgcolor = "#3366FF">3366FF</td>

			<td bgcolor = "#FFBB33">FFBB33</td>
		</tr>
		<tr>
			<td bgcolor = "#3366CC">3366CC</td>
			<td bgcolor = "#CC9933">CC9933</td>
		</tr>
		<tr>

			<td bgcolor = "#336699">336699</td>
			<td bgcolor = "#997733">997733</td>
		</tr>
		<tr>
			<td bgcolor = "#336666">336666</td>
			<td bgcolor = "#665533">665533</td>
		</tr>

		<tr>
			<td bgcolor = "#336633">336633</td>
			<td bgcolor = "#665533">665533</td>
		</tr>
		<tr>
			<td bgcolor = "#336600">336600</td>
			<td bgcolor = "#664400">664400</td>

		</tr>
		<tr>
			<td bgcolor = "#3333FF">3333FF</td>
			<td bgcolor = "#FFBB33">FFBB33</td>
		</tr>
		<tr>
			<td bgcolor = "#3333CC">3333CC</td>

			<td bgcolor = "#CC9933">CC9933</td>
		</tr>
		<tr>
			<td bgcolor = "#333399">333399</td>
			<td bgcolor = "#997733">997733</td>
		</tr>
		<tr>

			<td bgcolor = "#333366">333366</td>
			<td bgcolor = "#665533">665533</td>
		</tr>
		<tr>
			<td bgcolor = "#333333">333333</td>
			<td bgcolor = "#333333">333333</td>
		</tr>

		<tr>
			<td bgcolor = "#333300">333300</td>
			<td bgcolor = "#332200">332200</td>
		</tr>
		<tr>
			<td bgcolor = "#3300FF">3300FF</td>
			<td bgcolor = "#FFAA00">FFAA00</td>

		</tr>
		<tr>
			<td bgcolor = "#3300CC">3300CC</td>
			<td bgcolor = "#CC8800">CC8800</td>
		</tr>
		<tr>
			<td bgcolor = "#330099">330099</td>

			<td bgcolor = "#996600">996600</td>
		</tr>
		<tr>
			<td bgcolor = "#330066">330066</td>
			<td bgcolor = "#664400">664400</td>
		</tr>
		<tr>

			<td bgcolor = "#330033">330033</td>
			<td bgcolor = "#332200">332200</td>
		</tr>
		<tr>
			<td bgcolor = "#330000">330000</td>
			<td bgcolor = "#332200">332200</td>
		</tr>

		<tr>
			<td bgcolor = "#00FFFF">00FFFF</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>
			<td bgcolor = "#00FFCC">00FFCC</td>
			<td bgcolor = "#FFAA00">FFAA00</td>

		</tr>
		<tr>
			<td bgcolor = "#00FF99">00FF99</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>
			<td bgcolor = "#00FF66">00FF66</td>

			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>
			<td bgcolor = "#00FF33">00FF33</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>

			<td bgcolor = "#00FF00">00FF00</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>
			<td bgcolor = "#00CCFF">00CCFF</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>

		<tr>
			<td bgcolor = "#00CCCC">00CCCC</td>
			<td bgcolor = "#CC8800">CC8800</td>
		</tr>
		<tr>
			<td bgcolor = "#00CC99">00CC99</td>
			<td bgcolor = "#CC8800">CC8800</td>

		</tr>
		<tr>
			<td bgcolor = "#00CC66">00CC66</td>
			<td bgcolor = "#CC8800">CC8800</td>
		</tr>
		<tr>
			<td bgcolor = "#00CC33">00CC33</td>

			<td bgcolor = "#CC8800">CC8800</td>
		</tr>
		<tr>
			<td bgcolor = "#00CC00">00CC00</td>
			<td bgcolor = "#CC8800">CC8800</td>
		</tr>
		<tr>

			<td bgcolor = "#0099FF">0099FF</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>
			<td bgcolor = "#0099CC">0099CC</td>
			<td bgcolor = "#CC8800">CC8800</td>
		</tr>

		<tr>
			<td bgcolor = "#009999">009999</td>
			<td bgcolor = "#996600">996600</td>
		</tr>
		<tr>
			<td bgcolor = "#009966">009966</td>
			<td bgcolor = "#996600">996600</td>

		</tr>
		<tr>
			<td bgcolor = "#009933">009933</td>
			<td bgcolor = "#996600">996600</td>
		</tr>
		<tr>
			<td bgcolor = "#009900">009900</td>

			<td bgcolor = "#996600">996600</td>
		</tr>
		<tr>
			<td bgcolor = "#0066FF">0066FF</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>

			<td bgcolor = "#0066CC">0066CC</td>
			<td bgcolor = "#CC8800">CC8800</td>
		</tr>
		<tr>
			<td bgcolor = "#006699">006699</td>
			<td bgcolor = "#996600">996600</td>
		</tr>

		<tr>
			<td bgcolor = "#006666">006666</td>
			<td bgcolor = "#664400">664400</td>
		</tr>
		<tr>
			<td bgcolor = "#006633">006633</td>
			<td bgcolor = "#664400">664400</td>

		</tr>
		<tr>
			<td bgcolor = "#006600">006600</td>
			<td bgcolor = "#664400">664400</td>
		</tr>
		<tr>
			<td bgcolor = "#0033FF">0033FF</td>

			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>
			<td bgcolor = "#0033CC">0033CC</td>
			<td bgcolor = "#CC8800">CC8800</td>
		</tr>
		<tr>

			<td bgcolor = "#003399">003399</td>
			<td bgcolor = "#996600">996600</td>
		</tr>
		<tr>
			<td bgcolor = "#003366">003366</td>
			<td bgcolor = "#664400">664400</td>
		</tr>

		<tr>
			<td bgcolor = "#003333">003333</td>
			<td bgcolor = "#332200">332200</td>
		</tr>
		<tr>
			<td bgcolor = "#003300">003300</td>
			<td bgcolor = "#332200">332200</td>

		</tr>
		<tr>
			<td bgcolor = "#0000FF">0000FF</td>
			<td bgcolor = "#FFAA00">FFAA00</td>
		</tr>
		<tr>
			<td bgcolor = "#0000CC">0000CC</td>

			<td bgcolor = "#CC8800">CC8800</td>
		</tr>
		<tr>
			<td bgcolor = "#000099">000099</td>
			<td bgcolor = "#996600">996600</td>
		</tr>
		<tr>

			<td bgcolor = "#000066">000066</td>
			<td bgcolor = "#664400">664400</td>
		</tr>
		<tr>
			<td bgcolor = "#000033">000033</td>
			<td bgcolor = "#332200">332200</td>
		</tr>

		<tr>
			<td bgcolor = "#000000">000000</td>
			<td bgcolor = "#000000">000000</td>
		</tr></table></td><td><h1><font color = '#ffffff'>lemon</font></h1><table>

		<tr>
			<td bgcolor = "#FFFFFF">FFFFFF</td>

			<td bgcolor = "#FFFFFF">FFFFFF</td>
		</tr>
		<tr>
			<td bgcolor = "#FFFFCC">FFFFCC</td>
			<td bgcolor = "#FFFFCC">FFFFCC</td>
		</tr>
		<tr>

			<td bgcolor = "#FFFF99">FFFF99</td>
			<td bgcolor = "#FFFF99">FFFF99</td>
		</tr>
		<tr>
			<td bgcolor = "#FFFF66">FFFF66</td>
			<td bgcolor = "#FFFF66">FFFF66</td>
		</tr>

		<tr>
			<td bgcolor = "#FFFF33">FFFF33</td>
			<td bgcolor = "#FFFF33">FFFF33</td>
		</tr>
		<tr>
			<td bgcolor = "#FFFF00">FFFF00</td>
			<td bgcolor = "#FFFF00">FFFF00</td>

		</tr>
		<tr>
			<td bgcolor = "#FFCCFF">FFCCFF</td>
			<td bgcolor = "#FFFFCC">FFFFCC</td>
		</tr>
		<tr>
			<td bgcolor = "#FFCCCC">FFCCCC</td>

			<td bgcolor = "#FFFFCC">FFFFCC</td>
		</tr>
		<tr>
			<td bgcolor = "#FFCC99">FFCC99</td>
			<td bgcolor = "#FFFF99">FFFF99</td>
		</tr>
		<tr>

			<td bgcolor = "#FFCC66">FFCC66</td>
			<td bgcolor = "#FFFF66">FFFF66</td>
		</tr>
		<tr>
			<td bgcolor = "#FFCC33">FFCC33</td>
			<td bgcolor = "#FFFF33">FFFF33</td>
		</tr>

		<tr>
			<td bgcolor = "#FFCC00">FFCC00</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>
		<tr>
			<td bgcolor = "#FF99FF">FF99FF</td>
			<td bgcolor = "#FFFF99">FFFF99</td>

		</tr>
		<tr>
			<td bgcolor = "#FF99CC">FF99CC</td>
			<td bgcolor = "#FFFF99">FFFF99</td>
		</tr>
		<tr>
			<td bgcolor = "#FF9999">FF9999</td>

			<td bgcolor = "#FFFF99">FFFF99</td>
		</tr>
		<tr>
			<td bgcolor = "#FF9966">FF9966</td>
			<td bgcolor = "#FFFF66">FFFF66</td>
		</tr>
		<tr>

			<td bgcolor = "#FF9933">FF9933</td>
			<td bgcolor = "#FFFF33">FFFF33</td>
		</tr>
		<tr>
			<td bgcolor = "#FF9900">FF9900</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>

		<tr>
			<td bgcolor = "#FF66FF">FF66FF</td>
			<td bgcolor = "#FFFF66">FFFF66</td>
		</tr>
		<tr>
			<td bgcolor = "#FF66CC">FF66CC</td>
			<td bgcolor = "#FFFF66">FFFF66</td>

		</tr>
		<tr>
			<td bgcolor = "#FF6699">FF6699</td>
			<td bgcolor = "#FFFF66">FFFF66</td>
		</tr>
		<tr>
			<td bgcolor = "#FF6666">FF6666</td>

			<td bgcolor = "#FFFF66">FFFF66</td>
		</tr>
		<tr>
			<td bgcolor = "#FF6633">FF6633</td>
			<td bgcolor = "#FFFF33">FFFF33</td>
		</tr>
		<tr>

			<td bgcolor = "#FF6600">FF6600</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>
		<tr>
			<td bgcolor = "#FF33FF">FF33FF</td>
			<td bgcolor = "#FFFF33">FFFF33</td>
		</tr>

		<tr>
			<td bgcolor = "#FF33CC">FF33CC</td>
			<td bgcolor = "#FFFF33">FFFF33</td>
		</tr>
		<tr>
			<td bgcolor = "#FF3399">FF3399</td>
			<td bgcolor = "#FFFF33">FFFF33</td>

		</tr>
		<tr>
			<td bgcolor = "#FF3366">FF3366</td>
			<td bgcolor = "#FFFF33">FFFF33</td>
		</tr>
		<tr>
			<td bgcolor = "#FF3333">FF3333</td>

			<td bgcolor = "#FFFF33">FFFF33</td>
		</tr>
		<tr>
			<td bgcolor = "#FF3300">FF3300</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>
		<tr>

			<td bgcolor = "#FF00FF">FF00FF</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>
		<tr>
			<td bgcolor = "#FF00CC">FF00CC</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>

		<tr>
			<td bgcolor = "#FF0099">FF0099</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>
		<tr>
			<td bgcolor = "#FF0066">FF0066</td>
			<td bgcolor = "#FFFF00">FFFF00</td>

		</tr>
		<tr>
			<td bgcolor = "#FF0033">FF0033</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>
		<tr>
			<td bgcolor = "#FF0000">FF0000</td>

			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>
		<tr>
			<td bgcolor = "#CCFFFF">CCFFFF</td>
			<td bgcolor = "#FFFFCC">FFFFCC</td>
		</tr>
		<tr>

			<td bgcolor = "#CCFFCC">CCFFCC</td>
			<td bgcolor = "#FFFFCC">FFFFCC</td>
		</tr>
		<tr>
			<td bgcolor = "#CCFF99">CCFF99</td>
			<td bgcolor = "#FFFF99">FFFF99</td>
		</tr>

		<tr>
			<td bgcolor = "#CCFF66">CCFF66</td>
			<td bgcolor = "#FFFF66">FFFF66</td>
		</tr>
		<tr>
			<td bgcolor = "#CCFF33">CCFF33</td>
			<td bgcolor = "#FFFF33">FFFF33</td>

		</tr>
		<tr>
			<td bgcolor = "#CCFF00">CCFF00</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>
		<tr>
			<td bgcolor = "#CCCCFF">CCCCFF</td>

			<td bgcolor = "#FFFFCC">FFFFCC</td>
		</tr>
		<tr>
			<td bgcolor = "#CCCCCC">CCCCCC</td>
			<td bgcolor = "#CCCCCC">CCCCCC</td>
		</tr>
		<tr>

			<td bgcolor = "#CCCC99">CCCC99</td>
			<td bgcolor = "#CCCC99">CCCC99</td>
		</tr>
		<tr>
			<td bgcolor = "#CCCC66">CCCC66</td>
			<td bgcolor = "#CCCC66">CCCC66</td>
		</tr>

		<tr>
			<td bgcolor = "#CCCC33">CCCC33</td>
			<td bgcolor = "#CCCC33">CCCC33</td>
		</tr>
		<tr>
			<td bgcolor = "#CCCC00">CCCC00</td>
			<td bgcolor = "#CCCC00">CCCC00</td>

		</tr>
		<tr>
			<td bgcolor = "#CC99FF">CC99FF</td>
			<td bgcolor = "#FFFF99">FFFF99</td>
		</tr>
		<tr>
			<td bgcolor = "#CC99CC">CC99CC</td>

			<td bgcolor = "#CCCC99">CCCC99</td>
		</tr>
		<tr>
			<td bgcolor = "#CC9999">CC9999</td>
			<td bgcolor = "#CCCC99">CCCC99</td>
		</tr>
		<tr>

			<td bgcolor = "#CC9966">CC9966</td>
			<td bgcolor = "#CCCC66">CCCC66</td>
		</tr>
		<tr>
			<td bgcolor = "#CC9933">CC9933</td>
			<td bgcolor = "#CCCC33">CCCC33</td>
		</tr>

		<tr>
			<td bgcolor = "#CC9900">CC9900</td>
			<td bgcolor = "#CCCC00">CCCC00</td>
		</tr>
		<tr>
			<td bgcolor = "#CC66FF">CC66FF</td>
			<td bgcolor = "#FFFF66">FFFF66</td>

		</tr>
		<tr>
			<td bgcolor = "#CC66CC">CC66CC</td>
			<td bgcolor = "#CCCC66">CCCC66</td>
		</tr>
		<tr>
			<td bgcolor = "#CC6699">CC6699</td>

			<td bgcolor = "#CCCC66">CCCC66</td>
		</tr>
		<tr>
			<td bgcolor = "#CC6666">CC6666</td>
			<td bgcolor = "#CCCC66">CCCC66</td>
		</tr>
		<tr>

			<td bgcolor = "#CC6633">CC6633</td>
			<td bgcolor = "#CCCC33">CCCC33</td>
		</tr>
		<tr>
			<td bgcolor = "#CC6600">CC6600</td>
			<td bgcolor = "#CCCC00">CCCC00</td>
		</tr>

		<tr>
			<td bgcolor = "#CC33FF">CC33FF</td>
			<td bgcolor = "#FFFF33">FFFF33</td>
		</tr>
		<tr>
			<td bgcolor = "#CC33CC">CC33CC</td>
			<td bgcolor = "#CCCC33">CCCC33</td>

		</tr>
		<tr>
			<td bgcolor = "#CC3399">CC3399</td>
			<td bgcolor = "#CCCC33">CCCC33</td>
		</tr>
		<tr>
			<td bgcolor = "#CC3366">CC3366</td>

			<td bgcolor = "#CCCC33">CCCC33</td>
		</tr>
		<tr>
			<td bgcolor = "#CC3333">CC3333</td>
			<td bgcolor = "#CCCC33">CCCC33</td>
		</tr>
		<tr>

			<td bgcolor = "#CC3300">CC3300</td>
			<td bgcolor = "#CCCC00">CCCC00</td>
		</tr>
		<tr>
			<td bgcolor = "#CC00FF">CC00FF</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>

		<tr>
			<td bgcolor = "#CC00CC">CC00CC</td>
			<td bgcolor = "#CCCC00">CCCC00</td>
		</tr>
		<tr>
			<td bgcolor = "#CC0099">CC0099</td>
			<td bgcolor = "#CCCC00">CCCC00</td>

		</tr>
		<tr>
			<td bgcolor = "#CC0066">CC0066</td>
			<td bgcolor = "#CCCC00">CCCC00</td>
		</tr>
		<tr>
			<td bgcolor = "#CC0033">CC0033</td>

			<td bgcolor = "#CCCC00">CCCC00</td>
		</tr>
		<tr>
			<td bgcolor = "#CC0000">CC0000</td>
			<td bgcolor = "#CCCC00">CCCC00</td>
		</tr>
		<tr>

			<td bgcolor = "#99FFFF">99FFFF</td>
			<td bgcolor = "#FFFF99">FFFF99</td>
		</tr>
		<tr>
			<td bgcolor = "#99FFCC">99FFCC</td>
			<td bgcolor = "#FFFF99">FFFF99</td>
		</tr>

		<tr>
			<td bgcolor = "#99FF99">99FF99</td>
			<td bgcolor = "#FFFF99">FFFF99</td>
		</tr>
		<tr>
			<td bgcolor = "#99FF66">99FF66</td>
			<td bgcolor = "#FFFF66">FFFF66</td>

		</tr>
		<tr>
			<td bgcolor = "#99FF33">99FF33</td>
			<td bgcolor = "#FFFF33">FFFF33</td>
		</tr>
		<tr>
			<td bgcolor = "#99FF00">99FF00</td>

			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>
		<tr>
			<td bgcolor = "#99CCFF">99CCFF</td>
			<td bgcolor = "#FFFF99">FFFF99</td>
		</tr>
		<tr>

			<td bgcolor = "#99CCCC">99CCCC</td>
			<td bgcolor = "#CCCC99">CCCC99</td>
		</tr>
		<tr>
			<td bgcolor = "#99CC99">99CC99</td>
			<td bgcolor = "#CCCC99">CCCC99</td>
		</tr>

		<tr>
			<td bgcolor = "#99CC66">99CC66</td>
			<td bgcolor = "#CCCC66">CCCC66</td>
		</tr>
		<tr>
			<td bgcolor = "#99CC33">99CC33</td>
			<td bgcolor = "#CCCC33">CCCC33</td>

		</tr>
		<tr>
			<td bgcolor = "#99CC00">99CC00</td>
			<td bgcolor = "#CCCC00">CCCC00</td>
		</tr>
		<tr>
			<td bgcolor = "#9999FF">9999FF</td>

			<td bgcolor = "#FFFF99">FFFF99</td>
		</tr>
		<tr>
			<td bgcolor = "#9999CC">9999CC</td>
			<td bgcolor = "#CCCC99">CCCC99</td>
		</tr>
		<tr>

			<td bgcolor = "#999999">999999</td>
			<td bgcolor = "#999999">999999</td>
		</tr>
		<tr>
			<td bgcolor = "#999966">999966</td>
			<td bgcolor = "#999966">999966</td>
		</tr>

		<tr>
			<td bgcolor = "#999933">999933</td>
			<td bgcolor = "#999933">999933</td>
		</tr>
		<tr>
			<td bgcolor = "#999900">999900</td>
			<td bgcolor = "#999900">999900</td>

		</tr>
		<tr>
			<td bgcolor = "#9966FF">9966FF</td>
			<td bgcolor = "#FFFF66">FFFF66</td>
		</tr>
		<tr>
			<td bgcolor = "#9966CC">9966CC</td>

			<td bgcolor = "#CCCC66">CCCC66</td>
		</tr>
		<tr>
			<td bgcolor = "#996699">996699</td>
			<td bgcolor = "#999966">999966</td>
		</tr>
		<tr>

			<td bgcolor = "#996666">996666</td>
			<td bgcolor = "#999966">999966</td>
		</tr>
		<tr>
			<td bgcolor = "#996633">996633</td>
			<td bgcolor = "#999933">999933</td>
		</tr>

		<tr>
			<td bgcolor = "#996600">996600</td>
			<td bgcolor = "#999900">999900</td>
		</tr>
		<tr>
			<td bgcolor = "#9933FF">9933FF</td>
			<td bgcolor = "#FFFF33">FFFF33</td>

		</tr>
		<tr>
			<td bgcolor = "#9933CC">9933CC</td>
			<td bgcolor = "#CCCC33">CCCC33</td>
		</tr>
		<tr>
			<td bgcolor = "#993399">993399</td>

			<td bgcolor = "#999933">999933</td>
		</tr>
		<tr>
			<td bgcolor = "#993366">993366</td>
			<td bgcolor = "#999933">999933</td>
		</tr>
		<tr>

			<td bgcolor = "#993333">993333</td>
			<td bgcolor = "#999933">999933</td>
		</tr>
		<tr>
			<td bgcolor = "#993300">993300</td>
			<td bgcolor = "#999900">999900</td>
		</tr>

		<tr>
			<td bgcolor = "#9900FF">9900FF</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>
		<tr>
			<td bgcolor = "#9900CC">9900CC</td>
			<td bgcolor = "#CCCC00">CCCC00</td>

		</tr>
		<tr>
			<td bgcolor = "#990099">990099</td>
			<td bgcolor = "#999900">999900</td>
		</tr>
		<tr>
			<td bgcolor = "#990066">990066</td>

			<td bgcolor = "#999900">999900</td>
		</tr>
		<tr>
			<td bgcolor = "#990033">990033</td>
			<td bgcolor = "#999900">999900</td>
		</tr>
		<tr>

			<td bgcolor = "#990000">990000</td>
			<td bgcolor = "#999900">999900</td>
		</tr>
		<tr>
			<td bgcolor = "#66FFFF">66FFFF</td>
			<td bgcolor = "#FFFF66">FFFF66</td>
		</tr>

		<tr>
			<td bgcolor = "#66FFCC">66FFCC</td>
			<td bgcolor = "#FFFF66">FFFF66</td>
		</tr>
		<tr>
			<td bgcolor = "#66FF99">66FF99</td>
			<td bgcolor = "#FFFF66">FFFF66</td>

		</tr>
		<tr>
			<td bgcolor = "#66FF66">66FF66</td>
			<td bgcolor = "#FFFF66">FFFF66</td>
		</tr>
		<tr>
			<td bgcolor = "#66FF33">66FF33</td>

			<td bgcolor = "#FFFF33">FFFF33</td>
		</tr>
		<tr>
			<td bgcolor = "#66FF00">66FF00</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>
		<tr>

			<td bgcolor = "#66CCFF">66CCFF</td>
			<td bgcolor = "#FFFF66">FFFF66</td>
		</tr>
		<tr>
			<td bgcolor = "#66CCCC">66CCCC</td>
			<td bgcolor = "#CCCC66">CCCC66</td>
		</tr>

		<tr>
			<td bgcolor = "#66CC99">66CC99</td>
			<td bgcolor = "#CCCC66">CCCC66</td>
		</tr>
		<tr>
			<td bgcolor = "#66CC66">66CC66</td>
			<td bgcolor = "#CCCC66">CCCC66</td>

		</tr>
		<tr>
			<td bgcolor = "#66CC33">66CC33</td>
			<td bgcolor = "#CCCC33">CCCC33</td>
		</tr>
		<tr>
			<td bgcolor = "#66CC00">66CC00</td>

			<td bgcolor = "#CCCC00">CCCC00</td>
		</tr>
		<tr>
			<td bgcolor = "#6699FF">6699FF</td>
			<td bgcolor = "#FFFF66">FFFF66</td>
		</tr>
		<tr>

			<td bgcolor = "#6699CC">6699CC</td>
			<td bgcolor = "#CCCC66">CCCC66</td>
		</tr>
		<tr>
			<td bgcolor = "#669999">669999</td>
			<td bgcolor = "#999966">999966</td>
		</tr>

		<tr>
			<td bgcolor = "#669966">669966</td>
			<td bgcolor = "#999966">999966</td>
		</tr>
		<tr>
			<td bgcolor = "#669933">669933</td>
			<td bgcolor = "#999933">999933</td>

		</tr>
		<tr>
			<td bgcolor = "#669900">669900</td>
			<td bgcolor = "#999900">999900</td>
		</tr>
		<tr>
			<td bgcolor = "#6666FF">6666FF</td>

			<td bgcolor = "#FFFF66">FFFF66</td>
		</tr>
		<tr>
			<td bgcolor = "#6666CC">6666CC</td>
			<td bgcolor = "#CCCC66">CCCC66</td>
		</tr>
		<tr>

			<td bgcolor = "#666699">666699</td>
			<td bgcolor = "#999966">999966</td>
		</tr>
		<tr>
			<td bgcolor = "#666666">666666</td>
			<td bgcolor = "#666666">666666</td>
		</tr>

		<tr>
			<td bgcolor = "#666633">666633</td>
			<td bgcolor = "#666633">666633</td>
		</tr>
		<tr>
			<td bgcolor = "#666600">666600</td>
			<td bgcolor = "#666600">666600</td>

		</tr>
		<tr>
			<td bgcolor = "#6633FF">6633FF</td>
			<td bgcolor = "#FFFF33">FFFF33</td>
		</tr>
		<tr>
			<td bgcolor = "#6633CC">6633CC</td>

			<td bgcolor = "#CCCC33">CCCC33</td>
		</tr>
		<tr>
			<td bgcolor = "#663399">663399</td>
			<td bgcolor = "#999933">999933</td>
		</tr>
		<tr>

			<td bgcolor = "#663366">663366</td>
			<td bgcolor = "#666633">666633</td>
		</tr>
		<tr>
			<td bgcolor = "#663333">663333</td>
			<td bgcolor = "#666633">666633</td>
		</tr>

		<tr>
			<td bgcolor = "#663300">663300</td>
			<td bgcolor = "#666600">666600</td>
		</tr>
		<tr>
			<td bgcolor = "#6600FF">6600FF</td>
			<td bgcolor = "#FFFF00">FFFF00</td>

		</tr>
		<tr>
			<td bgcolor = "#6600CC">6600CC</td>
			<td bgcolor = "#CCCC00">CCCC00</td>
		</tr>
		<tr>
			<td bgcolor = "#660099">660099</td>

			<td bgcolor = "#999900">999900</td>
		</tr>
		<tr>
			<td bgcolor = "#660066">660066</td>
			<td bgcolor = "#666600">666600</td>
		</tr>
		<tr>

			<td bgcolor = "#660033">660033</td>
			<td bgcolor = "#666600">666600</td>
		</tr>
		<tr>
			<td bgcolor = "#660000">660000</td>
			<td bgcolor = "#666600">666600</td>
		</tr>

		<tr>
			<td bgcolor = "#33FFFF">33FFFF</td>
			<td bgcolor = "#FFFF33">FFFF33</td>
		</tr>
		<tr>
			<td bgcolor = "#33FFCC">33FFCC</td>
			<td bgcolor = "#FFFF33">FFFF33</td>

		</tr>
		<tr>
			<td bgcolor = "#33FF99">33FF99</td>
			<td bgcolor = "#FFFF33">FFFF33</td>
		</tr>
		<tr>
			<td bgcolor = "#33FF66">33FF66</td>

			<td bgcolor = "#FFFF33">FFFF33</td>
		</tr>
		<tr>
			<td bgcolor = "#33FF33">33FF33</td>
			<td bgcolor = "#FFFF33">FFFF33</td>
		</tr>
		<tr>

			<td bgcolor = "#33FF00">33FF00</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>
		<tr>
			<td bgcolor = "#33CCFF">33CCFF</td>
			<td bgcolor = "#FFFF33">FFFF33</td>
		</tr>

		<tr>
			<td bgcolor = "#33CCCC">33CCCC</td>
			<td bgcolor = "#CCCC33">CCCC33</td>
		</tr>
		<tr>
			<td bgcolor = "#33CC99">33CC99</td>
			<td bgcolor = "#CCCC33">CCCC33</td>

		</tr>
		<tr>
			<td bgcolor = "#33CC66">33CC66</td>
			<td bgcolor = "#CCCC33">CCCC33</td>
		</tr>
		<tr>
			<td bgcolor = "#33CC33">33CC33</td>

			<td bgcolor = "#CCCC33">CCCC33</td>
		</tr>
		<tr>
			<td bgcolor = "#33CC00">33CC00</td>
			<td bgcolor = "#CCCC00">CCCC00</td>
		</tr>
		<tr>

			<td bgcolor = "#3399FF">3399FF</td>
			<td bgcolor = "#FFFF33">FFFF33</td>
		</tr>
		<tr>
			<td bgcolor = "#3399CC">3399CC</td>
			<td bgcolor = "#CCCC33">CCCC33</td>
		</tr>

		<tr>
			<td bgcolor = "#339999">339999</td>
			<td bgcolor = "#999933">999933</td>
		</tr>
		<tr>
			<td bgcolor = "#339966">339966</td>
			<td bgcolor = "#999933">999933</td>

		</tr>
		<tr>
			<td bgcolor = "#339933">339933</td>
			<td bgcolor = "#999933">999933</td>
		</tr>
		<tr>
			<td bgcolor = "#339900">339900</td>

			<td bgcolor = "#999900">999900</td>
		</tr>
		<tr>
			<td bgcolor = "#3366FF">3366FF</td>
			<td bgcolor = "#FFFF33">FFFF33</td>
		</tr>
		<tr>

			<td bgcolor = "#3366CC">3366CC</td>
			<td bgcolor = "#CCCC33">CCCC33</td>
		</tr>
		<tr>
			<td bgcolor = "#336699">336699</td>
			<td bgcolor = "#999933">999933</td>
		</tr>

		<tr>
			<td bgcolor = "#336666">336666</td>
			<td bgcolor = "#666633">666633</td>
		</tr>
		<tr>
			<td bgcolor = "#336633">336633</td>
			<td bgcolor = "#666633">666633</td>

		</tr>
		<tr>
			<td bgcolor = "#336600">336600</td>
			<td bgcolor = "#666600">666600</td>
		</tr>
		<tr>
			<td bgcolor = "#3333FF">3333FF</td>

			<td bgcolor = "#FFFF33">FFFF33</td>
		</tr>
		<tr>
			<td bgcolor = "#3333CC">3333CC</td>
			<td bgcolor = "#CCCC33">CCCC33</td>
		</tr>
		<tr>

			<td bgcolor = "#333399">333399</td>
			<td bgcolor = "#999933">999933</td>
		</tr>
		<tr>
			<td bgcolor = "#333366">333366</td>
			<td bgcolor = "#666633">666633</td>
		</tr>

		<tr>
			<td bgcolor = "#333333">333333</td>
			<td bgcolor = "#333333">333333</td>
		</tr>
		<tr>
			<td bgcolor = "#333300">333300</td>
			<td bgcolor = "#333300">333300</td>

		</tr>
		<tr>
			<td bgcolor = "#3300FF">3300FF</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>
		<tr>
			<td bgcolor = "#3300CC">3300CC</td>

			<td bgcolor = "#CCCC00">CCCC00</td>
		</tr>
		<tr>
			<td bgcolor = "#330099">330099</td>
			<td bgcolor = "#999900">999900</td>
		</tr>
		<tr>

			<td bgcolor = "#330066">330066</td>
			<td bgcolor = "#666600">666600</td>
		</tr>
		<tr>
			<td bgcolor = "#330033">330033</td>
			<td bgcolor = "#333300">333300</td>
		</tr>

		<tr>
			<td bgcolor = "#330000">330000</td>
			<td bgcolor = "#333300">333300</td>
		</tr>
		<tr>
			<td bgcolor = "#00FFFF">00FFFF</td>
			<td bgcolor = "#FFFF00">FFFF00</td>

		</tr>
		<tr>
			<td bgcolor = "#00FFCC">00FFCC</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>
		<tr>
			<td bgcolor = "#00FF99">00FF99</td>

			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>
		<tr>
			<td bgcolor = "#00FF66">00FF66</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>
		<tr>

			<td bgcolor = "#00FF33">00FF33</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>
		<tr>
			<td bgcolor = "#00FF00">00FF00</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>

		<tr>
			<td bgcolor = "#00CCFF">00CCFF</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>
		<tr>
			<td bgcolor = "#00CCCC">00CCCC</td>
			<td bgcolor = "#CCCC00">CCCC00</td>

		</tr>
		<tr>
			<td bgcolor = "#00CC99">00CC99</td>
			<td bgcolor = "#CCCC00">CCCC00</td>
		</tr>
		<tr>
			<td bgcolor = "#00CC66">00CC66</td>

			<td bgcolor = "#CCCC00">CCCC00</td>
		</tr>
		<tr>
			<td bgcolor = "#00CC33">00CC33</td>
			<td bgcolor = "#CCCC00">CCCC00</td>
		</tr>
		<tr>

			<td bgcolor = "#00CC00">00CC00</td>
			<td bgcolor = "#CCCC00">CCCC00</td>
		</tr>
		<tr>
			<td bgcolor = "#0099FF">0099FF</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>

		<tr>
			<td bgcolor = "#0099CC">0099CC</td>
			<td bgcolor = "#CCCC00">CCCC00</td>
		</tr>
		<tr>
			<td bgcolor = "#009999">009999</td>
			<td bgcolor = "#999900">999900</td>

		</tr>
		<tr>
			<td bgcolor = "#009966">009966</td>
			<td bgcolor = "#999900">999900</td>
		</tr>
		<tr>
			<td bgcolor = "#009933">009933</td>

			<td bgcolor = "#999900">999900</td>
		</tr>
		<tr>
			<td bgcolor = "#009900">009900</td>
			<td bgcolor = "#999900">999900</td>
		</tr>
		<tr>

			<td bgcolor = "#0066FF">0066FF</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>
		<tr>
			<td bgcolor = "#0066CC">0066CC</td>
			<td bgcolor = "#CCCC00">CCCC00</td>
		</tr>

		<tr>
			<td bgcolor = "#006699">006699</td>
			<td bgcolor = "#999900">999900</td>
		</tr>
		<tr>
			<td bgcolor = "#006666">006666</td>
			<td bgcolor = "#666600">666600</td>

		</tr>
		<tr>
			<td bgcolor = "#006633">006633</td>
			<td bgcolor = "#666600">666600</td>
		</tr>
		<tr>
			<td bgcolor = "#006600">006600</td>

			<td bgcolor = "#666600">666600</td>
		</tr>
		<tr>
			<td bgcolor = "#0033FF">0033FF</td>
			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>
		<tr>

			<td bgcolor = "#0033CC">0033CC</td>
			<td bgcolor = "#CCCC00">CCCC00</td>
		</tr>
		<tr>
			<td bgcolor = "#003399">003399</td>
			<td bgcolor = "#999900">999900</td>
		</tr>

		<tr>
			<td bgcolor = "#003366">003366</td>
			<td bgcolor = "#666600">666600</td>
		</tr>
		<tr>
			<td bgcolor = "#003333">003333</td>
			<td bgcolor = "#333300">333300</td>

		</tr>
		<tr>
			<td bgcolor = "#003300">003300</td>
			<td bgcolor = "#333300">333300</td>
		</tr>
		<tr>
			<td bgcolor = "#0000FF">0000FF</td>

			<td bgcolor = "#FFFF00">FFFF00</td>
		</tr>
		<tr>
			<td bgcolor = "#0000CC">0000CC</td>
			<td bgcolor = "#CCCC00">CCCC00</td>
		</tr>
		<tr>

			<td bgcolor = "#000099">000099</td>
			<td bgcolor = "#999900">999900</td>
		</tr>
		<tr>
			<td bgcolor = "#000066">000066</td>
			<td bgcolor = "#666600">666600</td>
		</tr>

		<tr>
			<td bgcolor = "#000033">000033</td>
			<td bgcolor = "#333300">333300</td>
		</tr>
		<tr>
			<td bgcolor = "#000000">000000</td>
			<td bgcolor = "#000000">000000</td>

		</tr></table></td><td><h1><font color = '#ffffff'>apple</font></h1><table>

		<tr>
			<td bgcolor = "#FFFFFF">FFFFFF</td>
			<td bgcolor = "#FFFFFF">FFFFFF</td>
		</tr>
		<tr>
			<td bgcolor = "#FFFFCC">FFFFCC</td>

			<td bgcolor = "#D9FFCC">D9FFCC</td>
		</tr>
		<tr>
			<td bgcolor = "#FFFF99">FFFF99</td>
			<td bgcolor = "#B3FF99">B3FF99</td>
		</tr>
		<tr>

			<td bgcolor = "#FFFF66">FFFF66</td>
			<td bgcolor = "#8CFF66">8CFF66</td>
		</tr>
		<tr>
			<td bgcolor = "#FFFF33">FFFF33</td>
			<td bgcolor = "#66FF33">66FF33</td>
		</tr>

		<tr>
			<td bgcolor = "#FFFF00">FFFF00</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>
			<td bgcolor = "#FFCCFF">FFCCFF</td>
			<td bgcolor = "#D9FFCC">D9FFCC</td>

		</tr>
		<tr>
			<td bgcolor = "#FFCCCC">FFCCCC</td>
			<td bgcolor = "#D9FFCC">D9FFCC</td>
		</tr>
		<tr>
			<td bgcolor = "#FFCC99">FFCC99</td>

			<td bgcolor = "#B3FF99">B3FF99</td>
		</tr>
		<tr>
			<td bgcolor = "#FFCC66">FFCC66</td>
			<td bgcolor = "#8CFF66">8CFF66</td>
		</tr>
		<tr>

			<td bgcolor = "#FFCC33">FFCC33</td>
			<td bgcolor = "#66FF33">66FF33</td>
		</tr>
		<tr>
			<td bgcolor = "#FFCC00">FFCC00</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>

		<tr>
			<td bgcolor = "#FF99FF">FF99FF</td>
			<td bgcolor = "#B3FF99">B3FF99</td>
		</tr>
		<tr>
			<td bgcolor = "#FF99CC">FF99CC</td>
			<td bgcolor = "#B3FF99">B3FF99</td>

		</tr>
		<tr>
			<td bgcolor = "#FF9999">FF9999</td>
			<td bgcolor = "#B3FF99">B3FF99</td>
		</tr>
		<tr>
			<td bgcolor = "#FF9966">FF9966</td>

			<td bgcolor = "#8CFF66">8CFF66</td>
		</tr>
		<tr>
			<td bgcolor = "#FF9933">FF9933</td>
			<td bgcolor = "#66FF33">66FF33</td>
		</tr>
		<tr>

			<td bgcolor = "#FF9900">FF9900</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>
			<td bgcolor = "#FF66FF">FF66FF</td>
			<td bgcolor = "#8CFF66">8CFF66</td>
		</tr>

		<tr>
			<td bgcolor = "#FF66CC">FF66CC</td>
			<td bgcolor = "#8CFF66">8CFF66</td>
		</tr>
		<tr>
			<td bgcolor = "#FF6699">FF6699</td>
			<td bgcolor = "#8CFF66">8CFF66</td>

		</tr>
		<tr>
			<td bgcolor = "#FF6666">FF6666</td>
			<td bgcolor = "#8CFF66">8CFF66</td>
		</tr>
		<tr>
			<td bgcolor = "#FF6633">FF6633</td>

			<td bgcolor = "#66FF33">66FF33</td>
		</tr>
		<tr>
			<td bgcolor = "#FF6600">FF6600</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>

			<td bgcolor = "#FF33FF">FF33FF</td>
			<td bgcolor = "#66FF33">66FF33</td>
		</tr>
		<tr>
			<td bgcolor = "#FF33CC">FF33CC</td>
			<td bgcolor = "#66FF33">66FF33</td>
		</tr>

		<tr>
			<td bgcolor = "#FF3399">FF3399</td>
			<td bgcolor = "#66FF33">66FF33</td>
		</tr>
		<tr>
			<td bgcolor = "#FF3366">FF3366</td>
			<td bgcolor = "#66FF33">66FF33</td>

		</tr>
		<tr>
			<td bgcolor = "#FF3333">FF3333</td>
			<td bgcolor = "#66FF33">66FF33</td>
		</tr>
		<tr>
			<td bgcolor = "#FF3300">FF3300</td>

			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>
			<td bgcolor = "#FF00FF">FF00FF</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>

			<td bgcolor = "#FF00CC">FF00CC</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>
			<td bgcolor = "#FF0099">FF0099</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>

		<tr>
			<td bgcolor = "#FF0066">FF0066</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>
			<td bgcolor = "#FF0033">FF0033</td>
			<td bgcolor = "#40FF00">40FF00</td>

		</tr>
		<tr>
			<td bgcolor = "#FF0000">FF0000</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>
			<td bgcolor = "#CCFFFF">CCFFFF</td>

			<td bgcolor = "#D9FFCC">D9FFCC</td>
		</tr>
		<tr>
			<td bgcolor = "#CCFFCC">CCFFCC</td>
			<td bgcolor = "#D9FFCC">D9FFCC</td>
		</tr>
		<tr>

			<td bgcolor = "#CCFF99">CCFF99</td>
			<td bgcolor = "#B3FF99">B3FF99</td>
		</tr>
		<tr>
			<td bgcolor = "#CCFF66">CCFF66</td>
			<td bgcolor = "#8CFF66">8CFF66</td>
		</tr>

		<tr>
			<td bgcolor = "#CCFF33">CCFF33</td>
			<td bgcolor = "#66FF33">66FF33</td>
		</tr>
		<tr>
			<td bgcolor = "#CCFF00">CCFF00</td>
			<td bgcolor = "#40FF00">40FF00</td>

		</tr>
		<tr>
			<td bgcolor = "#CCCCFF">CCCCFF</td>
			<td bgcolor = "#D9FFCC">D9FFCC</td>
		</tr>
		<tr>
			<td bgcolor = "#CCCCCC">CCCCCC</td>

			<td bgcolor = "#CCCCCC">CCCCCC</td>
		</tr>
		<tr>
			<td bgcolor = "#CCCC99">CCCC99</td>
			<td bgcolor = "#A6CC99">A6CC99</td>
		</tr>
		<tr>

			<td bgcolor = "#CCCC66">CCCC66</td>
			<td bgcolor = "#80CC66">80CC66</td>
		</tr>
		<tr>
			<td bgcolor = "#CCCC33">CCCC33</td>
			<td bgcolor = "#59CC33">59CC33</td>
		</tr>

		<tr>
			<td bgcolor = "#CCCC00">CCCC00</td>
			<td bgcolor = "#33CC00">33CC00</td>
		</tr>
		<tr>
			<td bgcolor = "#CC99FF">CC99FF</td>
			<td bgcolor = "#B3FF99">B3FF99</td>

		</tr>
		<tr>
			<td bgcolor = "#CC99CC">CC99CC</td>
			<td bgcolor = "#A6CC99">A6CC99</td>
		</tr>
		<tr>
			<td bgcolor = "#CC9999">CC9999</td>

			<td bgcolor = "#A6CC99">A6CC99</td>
		</tr>
		<tr>
			<td bgcolor = "#CC9966">CC9966</td>
			<td bgcolor = "#80CC66">80CC66</td>
		</tr>
		<tr>

			<td bgcolor = "#CC9933">CC9933</td>
			<td bgcolor = "#59CC33">59CC33</td>
		</tr>
		<tr>
			<td bgcolor = "#CC9900">CC9900</td>
			<td bgcolor = "#33CC00">33CC00</td>
		</tr>

		<tr>
			<td bgcolor = "#CC66FF">CC66FF</td>
			<td bgcolor = "#8CFF66">8CFF66</td>
		</tr>
		<tr>
			<td bgcolor = "#CC66CC">CC66CC</td>
			<td bgcolor = "#80CC66">80CC66</td>

		</tr>
		<tr>
			<td bgcolor = "#CC6699">CC6699</td>
			<td bgcolor = "#80CC66">80CC66</td>
		</tr>
		<tr>
			<td bgcolor = "#CC6666">CC6666</td>

			<td bgcolor = "#80CC66">80CC66</td>
		</tr>
		<tr>
			<td bgcolor = "#CC6633">CC6633</td>
			<td bgcolor = "#59CC33">59CC33</td>
		</tr>
		<tr>

			<td bgcolor = "#CC6600">CC6600</td>
			<td bgcolor = "#33CC00">33CC00</td>
		</tr>
		<tr>
			<td bgcolor = "#CC33FF">CC33FF</td>
			<td bgcolor = "#66FF33">66FF33</td>
		</tr>

		<tr>
			<td bgcolor = "#CC33CC">CC33CC</td>
			<td bgcolor = "#59CC33">59CC33</td>
		</tr>
		<tr>
			<td bgcolor = "#CC3399">CC3399</td>
			<td bgcolor = "#59CC33">59CC33</td>

		</tr>
		<tr>
			<td bgcolor = "#CC3366">CC3366</td>
			<td bgcolor = "#59CC33">59CC33</td>
		</tr>
		<tr>
			<td bgcolor = "#CC3333">CC3333</td>

			<td bgcolor = "#59CC33">59CC33</td>
		</tr>
		<tr>
			<td bgcolor = "#CC3300">CC3300</td>
			<td bgcolor = "#33CC00">33CC00</td>
		</tr>
		<tr>

			<td bgcolor = "#CC00FF">CC00FF</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>
			<td bgcolor = "#CC00CC">CC00CC</td>
			<td bgcolor = "#33CC00">33CC00</td>
		</tr>

		<tr>
			<td bgcolor = "#CC0099">CC0099</td>
			<td bgcolor = "#33CC00">33CC00</td>
		</tr>
		<tr>
			<td bgcolor = "#CC0066">CC0066</td>
			<td bgcolor = "#33CC00">33CC00</td>

		</tr>
		<tr>
			<td bgcolor = "#CC0033">CC0033</td>
			<td bgcolor = "#33CC00">33CC00</td>
		</tr>
		<tr>
			<td bgcolor = "#CC0000">CC0000</td>

			<td bgcolor = "#33CC00">33CC00</td>
		</tr>
		<tr>
			<td bgcolor = "#99FFFF">99FFFF</td>
			<td bgcolor = "#B3FF99">B3FF99</td>
		</tr>
		<tr>

			<td bgcolor = "#99FFCC">99FFCC</td>
			<td bgcolor = "#B3FF99">B3FF99</td>
		</tr>
		<tr>
			<td bgcolor = "#99FF99">99FF99</td>
			<td bgcolor = "#B3FF99">B3FF99</td>
		</tr>

		<tr>
			<td bgcolor = "#99FF66">99FF66</td>
			<td bgcolor = "#8CFF66">8CFF66</td>
		</tr>
		<tr>
			<td bgcolor = "#99FF33">99FF33</td>
			<td bgcolor = "#66FF33">66FF33</td>

		</tr>
		<tr>
			<td bgcolor = "#99FF00">99FF00</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>
			<td bgcolor = "#99CCFF">99CCFF</td>

			<td bgcolor = "#B3FF99">B3FF99</td>
		</tr>
		<tr>
			<td bgcolor = "#99CCCC">99CCCC</td>
			<td bgcolor = "#A6CC99">A6CC99</td>
		</tr>
		<tr>

			<td bgcolor = "#99CC99">99CC99</td>
			<td bgcolor = "#A6CC99">A6CC99</td>
		</tr>
		<tr>
			<td bgcolor = "#99CC66">99CC66</td>
			<td bgcolor = "#80CC66">80CC66</td>
		</tr>

		<tr>
			<td bgcolor = "#99CC33">99CC33</td>
			<td bgcolor = "#59CC33">59CC33</td>
		</tr>
		<tr>
			<td bgcolor = "#99CC00">99CC00</td>
			<td bgcolor = "#33CC00">33CC00</td>

		</tr>
		<tr>
			<td bgcolor = "#9999FF">9999FF</td>
			<td bgcolor = "#B3FF99">B3FF99</td>
		</tr>
		<tr>
			<td bgcolor = "#9999CC">9999CC</td>

			<td bgcolor = "#A6CC99">A6CC99</td>
		</tr>
		<tr>
			<td bgcolor = "#999999">999999</td>
			<td bgcolor = "#999999">999999</td>
		</tr>
		<tr>

			<td bgcolor = "#999966">999966</td>
			<td bgcolor = "#739966">739966</td>
		</tr>
		<tr>
			<td bgcolor = "#999933">999933</td>
			<td bgcolor = "#4D9933">4D9933</td>
		</tr>

		<tr>
			<td bgcolor = "#999900">999900</td>
			<td bgcolor = "#269900">269900</td>
		</tr>
		<tr>
			<td bgcolor = "#9966FF">9966FF</td>
			<td bgcolor = "#8CFF66">8CFF66</td>

		</tr>
		<tr>
			<td bgcolor = "#9966CC">9966CC</td>
			<td bgcolor = "#80CC66">80CC66</td>
		</tr>
		<tr>
			<td bgcolor = "#996699">996699</td>

			<td bgcolor = "#739966">739966</td>
		</tr>
		<tr>
			<td bgcolor = "#996666">996666</td>
			<td bgcolor = "#739966">739966</td>
		</tr>
		<tr>

			<td bgcolor = "#996633">996633</td>
			<td bgcolor = "#4D9933">4D9933</td>
		</tr>
		<tr>
			<td bgcolor = "#996600">996600</td>
			<td bgcolor = "#269900">269900</td>
		</tr>

		<tr>
			<td bgcolor = "#9933FF">9933FF</td>
			<td bgcolor = "#66FF33">66FF33</td>
		</tr>
		<tr>
			<td bgcolor = "#9933CC">9933CC</td>
			<td bgcolor = "#59CC33">59CC33</td>

		</tr>
		<tr>
			<td bgcolor = "#993399">993399</td>
			<td bgcolor = "#4D9933">4D9933</td>
		</tr>
		<tr>
			<td bgcolor = "#993366">993366</td>

			<td bgcolor = "#4D9933">4D9933</td>
		</tr>
		<tr>
			<td bgcolor = "#993333">993333</td>
			<td bgcolor = "#4D9933">4D9933</td>
		</tr>
		<tr>

			<td bgcolor = "#993300">993300</td>
			<td bgcolor = "#269900">269900</td>
		</tr>
		<tr>
			<td bgcolor = "#9900FF">9900FF</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>

		<tr>
			<td bgcolor = "#9900CC">9900CC</td>
			<td bgcolor = "#33CC00">33CC00</td>
		</tr>
		<tr>
			<td bgcolor = "#990099">990099</td>
			<td bgcolor = "#269900">269900</td>

		</tr>
		<tr>
			<td bgcolor = "#990066">990066</td>
			<td bgcolor = "#269900">269900</td>
		</tr>
		<tr>
			<td bgcolor = "#990033">990033</td>

			<td bgcolor = "#269900">269900</td>
		</tr>
		<tr>
			<td bgcolor = "#990000">990000</td>
			<td bgcolor = "#269900">269900</td>
		</tr>
		<tr>

			<td bgcolor = "#66FFFF">66FFFF</td>
			<td bgcolor = "#8CFF66">8CFF66</td>
		</tr>
		<tr>
			<td bgcolor = "#66FFCC">66FFCC</td>
			<td bgcolor = "#8CFF66">8CFF66</td>
		</tr>

		<tr>
			<td bgcolor = "#66FF99">66FF99</td>
			<td bgcolor = "#8CFF66">8CFF66</td>
		</tr>
		<tr>
			<td bgcolor = "#66FF66">66FF66</td>
			<td bgcolor = "#8CFF66">8CFF66</td>

		</tr>
		<tr>
			<td bgcolor = "#66FF33">66FF33</td>
			<td bgcolor = "#66FF33">66FF33</td>
		</tr>
		<tr>
			<td bgcolor = "#66FF00">66FF00</td>

			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>
			<td bgcolor = "#66CCFF">66CCFF</td>
			<td bgcolor = "#8CFF66">8CFF66</td>
		</tr>
		<tr>

			<td bgcolor = "#66CCCC">66CCCC</td>
			<td bgcolor = "#80CC66">80CC66</td>
		</tr>
		<tr>
			<td bgcolor = "#66CC99">66CC99</td>
			<td bgcolor = "#80CC66">80CC66</td>
		</tr>

		<tr>
			<td bgcolor = "#66CC66">66CC66</td>
			<td bgcolor = "#80CC66">80CC66</td>
		</tr>
		<tr>
			<td bgcolor = "#66CC33">66CC33</td>
			<td bgcolor = "#59CC33">59CC33</td>

		</tr>
		<tr>
			<td bgcolor = "#66CC00">66CC00</td>
			<td bgcolor = "#33CC00">33CC00</td>
		</tr>
		<tr>
			<td bgcolor = "#6699FF">6699FF</td>

			<td bgcolor = "#8CFF66">8CFF66</td>
		</tr>
		<tr>
			<td bgcolor = "#6699CC">6699CC</td>
			<td bgcolor = "#80CC66">80CC66</td>
		</tr>
		<tr>

			<td bgcolor = "#669999">669999</td>
			<td bgcolor = "#739966">739966</td>
		</tr>
		<tr>
			<td bgcolor = "#669966">669966</td>
			<td bgcolor = "#739966">739966</td>
		</tr>

		<tr>
			<td bgcolor = "#669933">669933</td>
			<td bgcolor = "#4D9933">4D9933</td>
		</tr>
		<tr>
			<td bgcolor = "#669900">669900</td>
			<td bgcolor = "#269900">269900</td>

		</tr>
		<tr>
			<td bgcolor = "#6666FF">6666FF</td>
			<td bgcolor = "#8CFF66">8CFF66</td>
		</tr>
		<tr>
			<td bgcolor = "#6666CC">6666CC</td>

			<td bgcolor = "#80CC66">80CC66</td>
		</tr>
		<tr>
			<td bgcolor = "#666699">666699</td>
			<td bgcolor = "#739966">739966</td>
		</tr>
		<tr>

			<td bgcolor = "#666666">666666</td>
			<td bgcolor = "#666666">666666</td>
		</tr>
		<tr>
			<td bgcolor = "#666633">666633</td>
			<td bgcolor = "#406633">406633</td>
		</tr>

		<tr>
			<td bgcolor = "#666600">666600</td>
			<td bgcolor = "#1A6600">1A6600</td>
		</tr>
		<tr>
			<td bgcolor = "#6633FF">6633FF</td>
			<td bgcolor = "#66FF33">66FF33</td>

		</tr>
		<tr>
			<td bgcolor = "#6633CC">6633CC</td>
			<td bgcolor = "#59CC33">59CC33</td>
		</tr>
		<tr>
			<td bgcolor = "#663399">663399</td>

			<td bgcolor = "#4D9933">4D9933</td>
		</tr>
		<tr>
			<td bgcolor = "#663366">663366</td>
			<td bgcolor = "#406633">406633</td>
		</tr>
		<tr>

			<td bgcolor = "#663333">663333</td>
			<td bgcolor = "#406633">406633</td>
		</tr>
		<tr>
			<td bgcolor = "#663300">663300</td>
			<td bgcolor = "#1A6600">1A6600</td>
		</tr>

		<tr>
			<td bgcolor = "#6600FF">6600FF</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>
			<td bgcolor = "#6600CC">6600CC</td>
			<td bgcolor = "#33CC00">33CC00</td>

		</tr>
		<tr>
			<td bgcolor = "#660099">660099</td>
			<td bgcolor = "#269900">269900</td>
		</tr>
		<tr>
			<td bgcolor = "#660066">660066</td>

			<td bgcolor = "#1A6600">1A6600</td>
		</tr>
		<tr>
			<td bgcolor = "#660033">660033</td>
			<td bgcolor = "#1A6600">1A6600</td>
		</tr>
		<tr>

			<td bgcolor = "#660000">660000</td>
			<td bgcolor = "#1A6600">1A6600</td>
		</tr>
		<tr>
			<td bgcolor = "#33FFFF">33FFFF</td>
			<td bgcolor = "#66FF33">66FF33</td>
		</tr>

		<tr>
			<td bgcolor = "#33FFCC">33FFCC</td>
			<td bgcolor = "#66FF33">66FF33</td>
		</tr>
		<tr>
			<td bgcolor = "#33FF99">33FF99</td>
			<td bgcolor = "#66FF33">66FF33</td>

		</tr>
		<tr>
			<td bgcolor = "#33FF66">33FF66</td>
			<td bgcolor = "#66FF33">66FF33</td>
		</tr>
		<tr>
			<td bgcolor = "#33FF33">33FF33</td>

			<td bgcolor = "#66FF33">66FF33</td>
		</tr>
		<tr>
			<td bgcolor = "#33FF00">33FF00</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>

			<td bgcolor = "#33CCFF">33CCFF</td>
			<td bgcolor = "#66FF33">66FF33</td>
		</tr>
		<tr>
			<td bgcolor = "#33CCCC">33CCCC</td>
			<td bgcolor = "#59CC33">59CC33</td>
		</tr>

		<tr>
			<td bgcolor = "#33CC99">33CC99</td>
			<td bgcolor = "#59CC33">59CC33</td>
		</tr>
		<tr>
			<td bgcolor = "#33CC66">33CC66</td>
			<td bgcolor = "#59CC33">59CC33</td>

		</tr>
		<tr>
			<td bgcolor = "#33CC33">33CC33</td>
			<td bgcolor = "#59CC33">59CC33</td>
		</tr>
		<tr>
			<td bgcolor = "#33CC00">33CC00</td>

			<td bgcolor = "#33CC00">33CC00</td>
		</tr>
		<tr>
			<td bgcolor = "#3399FF">3399FF</td>
			<td bgcolor = "#66FF33">66FF33</td>
		</tr>
		<tr>

			<td bgcolor = "#3399CC">3399CC</td>
			<td bgcolor = "#59CC33">59CC33</td>
		</tr>
		<tr>
			<td bgcolor = "#339999">339999</td>
			<td bgcolor = "#4D9933">4D9933</td>
		</tr>

		<tr>
			<td bgcolor = "#339966">339966</td>
			<td bgcolor = "#4D9933">4D9933</td>
		</tr>
		<tr>
			<td bgcolor = "#339933">339933</td>
			<td bgcolor = "#4D9933">4D9933</td>

		</tr>
		<tr>
			<td bgcolor = "#339900">339900</td>
			<td bgcolor = "#269900">269900</td>
		</tr>
		<tr>
			<td bgcolor = "#3366FF">3366FF</td>

			<td bgcolor = "#66FF33">66FF33</td>
		</tr>
		<tr>
			<td bgcolor = "#3366CC">3366CC</td>
			<td bgcolor = "#59CC33">59CC33</td>
		</tr>
		<tr>

			<td bgcolor = "#336699">336699</td>
			<td bgcolor = "#4D9933">4D9933</td>
		</tr>
		<tr>
			<td bgcolor = "#336666">336666</td>
			<td bgcolor = "#406633">406633</td>
		</tr>

		<tr>
			<td bgcolor = "#336633">336633</td>
			<td bgcolor = "#406633">406633</td>
		</tr>
		<tr>
			<td bgcolor = "#336600">336600</td>
			<td bgcolor = "#1A6600">1A6600</td>

		</tr>
		<tr>
			<td bgcolor = "#3333FF">3333FF</td>
			<td bgcolor = "#66FF33">66FF33</td>
		</tr>
		<tr>
			<td bgcolor = "#3333CC">3333CC</td>

			<td bgcolor = "#59CC33">59CC33</td>
		</tr>
		<tr>
			<td bgcolor = "#333399">333399</td>
			<td bgcolor = "#4D9933">4D9933</td>
		</tr>
		<tr>

			<td bgcolor = "#333366">333366</td>
			<td bgcolor = "#406633">406633</td>
		</tr>
		<tr>
			<td bgcolor = "#333333">333333</td>
			<td bgcolor = "#333333">333333</td>
		</tr>

		<tr>
			<td bgcolor = "#333300">333300</td>
			<td bgcolor = "#0D3300">0D3300</td>
		</tr>
		<tr>
			<td bgcolor = "#3300FF">3300FF</td>
			<td bgcolor = "#40FF00">40FF00</td>

		</tr>
		<tr>
			<td bgcolor = "#3300CC">3300CC</td>
			<td bgcolor = "#33CC00">33CC00</td>
		</tr>
		<tr>
			<td bgcolor = "#330099">330099</td>

			<td bgcolor = "#269900">269900</td>
		</tr>
		<tr>
			<td bgcolor = "#330066">330066</td>
			<td bgcolor = "#1A6600">1A6600</td>
		</tr>
		<tr>

			<td bgcolor = "#330033">330033</td>
			<td bgcolor = "#0D3300">0D3300</td>
		</tr>
		<tr>
			<td bgcolor = "#330000">330000</td>
			<td bgcolor = "#0D3300">0D3300</td>
		</tr>

		<tr>
			<td bgcolor = "#00FFFF">00FFFF</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>
			<td bgcolor = "#00FFCC">00FFCC</td>
			<td bgcolor = "#40FF00">40FF00</td>

		</tr>
		<tr>
			<td bgcolor = "#00FF99">00FF99</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>
			<td bgcolor = "#00FF66">00FF66</td>

			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>
			<td bgcolor = "#00FF33">00FF33</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>

			<td bgcolor = "#00FF00">00FF00</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>
			<td bgcolor = "#00CCFF">00CCFF</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>

		<tr>
			<td bgcolor = "#00CCCC">00CCCC</td>
			<td bgcolor = "#33CC00">33CC00</td>
		</tr>
		<tr>
			<td bgcolor = "#00CC99">00CC99</td>
			<td bgcolor = "#33CC00">33CC00</td>

		</tr>
		<tr>
			<td bgcolor = "#00CC66">00CC66</td>
			<td bgcolor = "#33CC00">33CC00</td>
		</tr>
		<tr>
			<td bgcolor = "#00CC33">00CC33</td>

			<td bgcolor = "#33CC00">33CC00</td>
		</tr>
		<tr>
			<td bgcolor = "#00CC00">00CC00</td>
			<td bgcolor = "#33CC00">33CC00</td>
		</tr>
		<tr>

			<td bgcolor = "#0099FF">0099FF</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>
			<td bgcolor = "#0099CC">0099CC</td>
			<td bgcolor = "#33CC00">33CC00</td>
		</tr>

		<tr>
			<td bgcolor = "#009999">009999</td>
			<td bgcolor = "#269900">269900</td>
		</tr>
		<tr>
			<td bgcolor = "#009966">009966</td>
			<td bgcolor = "#269900">269900</td>

		</tr>
		<tr>
			<td bgcolor = "#009933">009933</td>
			<td bgcolor = "#269900">269900</td>
		</tr>
		<tr>
			<td bgcolor = "#009900">009900</td>

			<td bgcolor = "#269900">269900</td>
		</tr>
		<tr>
			<td bgcolor = "#0066FF">0066FF</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>

			<td bgcolor = "#0066CC">0066CC</td>
			<td bgcolor = "#33CC00">33CC00</td>
		</tr>
		<tr>
			<td bgcolor = "#006699">006699</td>
			<td bgcolor = "#269900">269900</td>
		</tr>

		<tr>
			<td bgcolor = "#006666">006666</td>
			<td bgcolor = "#1A6600">1A6600</td>
		</tr>
		<tr>
			<td bgcolor = "#006633">006633</td>
			<td bgcolor = "#1A6600">1A6600</td>

		</tr>
		<tr>
			<td bgcolor = "#006600">006600</td>
			<td bgcolor = "#1A6600">1A6600</td>
		</tr>
		<tr>
			<td bgcolor = "#0033FF">0033FF</td>

			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>
			<td bgcolor = "#0033CC">0033CC</td>
			<td bgcolor = "#33CC00">33CC00</td>
		</tr>
		<tr>

			<td bgcolor = "#003399">003399</td>
			<td bgcolor = "#269900">269900</td>
		</tr>
		<tr>
			<td bgcolor = "#003366">003366</td>
			<td bgcolor = "#1A6600">1A6600</td>
		</tr>

		<tr>
			<td bgcolor = "#003333">003333</td>
			<td bgcolor = "#0D3300">0D3300</td>
		</tr>
		<tr>
			<td bgcolor = "#003300">003300</td>
			<td bgcolor = "#0D3300">0D3300</td>

		</tr>
		<tr>
			<td bgcolor = "#0000FF">0000FF</td>
			<td bgcolor = "#40FF00">40FF00</td>
		</tr>
		<tr>
			<td bgcolor = "#0000CC">0000CC</td>

			<td bgcolor = "#33CC00">33CC00</td>
		</tr>
		<tr>
			<td bgcolor = "#000099">000099</td>
			<td bgcolor = "#269900">269900</td>
		</tr>
		<tr>

			<td bgcolor = "#000066">000066</td>
			<td bgcolor = "#1A6600">1A6600</td>
		</tr>
		<tr>
			<td bgcolor = "#000033">000033</td>
			<td bgcolor = "#0D3300">0D3300</td>
		</tr>

		<tr>
			<td bgcolor = "#000000">000000</td>
			<td bgcolor = "#000000">000000</td>
		</tr></table></td></tr></table>

=end html

=head1 AUTHOR

Pete Sergeant - pete@clueball.com

=head1 SEE ALSO

http://www.tango.com

=head1 LICENSE

This library is free software, you can redistribute it and/or modify it under the same terms as Perl itself.

Tango is someone else's registered trademark - see: http://www.tango.com

=cut
