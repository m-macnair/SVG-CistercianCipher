#!/usr/bin/perl
use strict;
use warnings;
use SVG;

# create an SVG object
my $svg = SVG->new( width => 60, height => 60 );

# use explicit element constructor to generate a group element
my $y = $svg->group(

	# 	transform => 'rotate(180)',
);

# 0 start
$y->rectangle(
	x      => 25,
	y      => 0,
	width  => 10,
	height => 60,
);

# $y->rectangle(
# 	x     => 0, y      => 26,
# 	width => 60, height => 10,
# );

apply_2( $y );
apply_90( $y );
apply_900( $y );
apply_9000( $y );
DIGIT: {

	sub apply_1 {
		my ( $group ) = @_;
		$y->rectangle(
			x      => 30,
			y      => 0,
			width  => 30,
			height => 6,

		);
	}

	sub apply_2 {
		my ( $group ) = @_;
		$y->rectangle(
			x      => 30,
			y      => 19,
			width  => 30,
			height => 6,

		);
	}

	sub apply_3 {
		my ( $group ) = @_;
		slant_right_down( $group, 25, 0 );
	}

	sub apply_4 {
		my ( $group ) = @_;

		# a five-sided polygon
		slant_left_up( $group, 25, 0 );
	}

	sub apply_5 {
		my ( $group ) = @_;
		apply_4( $group );
		$group->rectangle(
			x      => 30,
			y      => 0,
			width  => 20,
			height => 6,

		);

	}

	sub apply_6 {
		my ( $group ) = @_;

		$y->rectangle(
			x      => 54,
			y      => 0,
			width  => 6,
			height => 25,

		);

	}

	sub apply_7 {
		my ( $group ) = @_;
		apply_6( $group );
		apply_1( $group );
	}

	sub apply_8 {
		my ( $group ) = @_;
		apply_6( $group );
		apply_2( $group );
	}

	sub apply_9 {
		my ( $group ) = @_;

		apply_6( $group );
		apply_2( $group );
		apply_1( $group );

	}
}
TENS: {

	sub apply_10 {
		my ( $group ) = @_;
		$y->rectangle(
			x      => 0,
			y      => 0,
			width  => 30,
			height => 6,

		);
	}

	sub apply_20 {
		my ( $group ) = @_;
		$y->rectangle(
			x      => 0,
			y      => 19,
			width  => 30,
			height => 6,

		);
	}

	sub apply_30 {
		my ( $group ) = @_;
		slant_left_up( $group, 0, 0 );
	}

	sub apply_40 {
		my ( $group ) = @_;

		slant_right_down( $group, 0, 0 );
	}

	sub apply_50 {
		my ( $group ) = @_;
		apply_40( $group );
		$group->rectangle(
			x      => 10,
			y      => 0,
			width  => 20,
			height => 6,

		);

	}

	sub apply_60 {
		my ( $group ) = @_;

		$y->rectangle(
			x      => 0,
			y      => 0,
			width  => 6,
			height => 25,

		);

	}

	sub apply_70 {
		my ( $group ) = @_;
		apply_60( $group );
		apply_10( $group );
	}

	sub apply_80 {
		my ( $group ) = @_;
		apply_60( $group );
		apply_20( $group );
	}

	sub apply_90 {
		my ( $group ) = @_;
		my ( $group ) = @_;
		apply_60( $group );
		apply_20( $group );
		apply_10( $group );

	}
}
HUNDREDS: {

	sub apply_100 {
		my ( $group ) = @_;
		$y->rectangle(
			x      => 30,
			y      => 54,
			width  => 30,
			height => 6,

		);
	}

	sub apply_200 {
		my ( $group ) = @_;
		$y->rectangle(
			x      => 30,
			y      => 35,
			width  => 30,
			height => 6,

		);
	}

	sub apply_300 {
		my ( $group ) = @_;
		slant_left_up( $group, 25, 35 );
	}

	sub apply_400 {
		my ( $group ) = @_;

		# a five-sided polygon
		slant_right_down( $group, 25, 35 );
	}

	sub apply_500 {
		my ( $group ) = @_;
		apply_400( $group );
		$group->rectangle(
			x      => 30,
			y      => 54,
			width  => 20,
			height => 6,
		);
	}

	sub apply_600 {
		my ( $group ) = @_;

		$y->rectangle(
			x      => 54,
			y      => 35,
			width  => 6,
			height => 25,

		);

	}

	sub apply_700 {
		my ( $group ) = @_;
		apply_600( $group );
		apply_100( $group );
	}

	sub apply_800 {
		my ( $group ) = @_;
		apply_600( $group );
		apply_200( $group );
	}

	sub apply_900 {
		my ( $group ) = @_;

		apply_600( $group );
		apply_200( $group );
		apply_100( $group );

	}
}
THOUSANDS: {

	sub apply_1000 {
		my ( $group ) = @_;
		$y->rectangle(
			x      => 0,
			y      => 54,
			width  => 30,
			height => 6,

		);
	}

	sub apply_2000 {
		my ( $group ) = @_;
		$y->rectangle(
			x      => 0,
			y      => 35,
			width  => 30,
			height => 6,

		);
	}

	sub apply_3000 {
		my ( $group ) = @_;
		slant_right_down( $group, 0, 35 );
	}

	sub apply_4000 {
		my ( $group ) = @_;

		slant_left_up( $group, 0, 35 );
	}

	sub apply_5000 {
		my ( $group ) = @_;
		apply_4000( $group );
		$group->rectangle(
			x      => 10,
			y      => 54,
			width  => 20,
			height => 6,

		);

	}

	sub apply_6000 {
		my ( $group ) = @_;

		$y->rectangle(
			x      => 0,
			y      => 35,
			width  => 6,
			height => 25,

		);

	}

	sub apply_7000 {
		my ( $group ) = @_;
		apply_6000( $group );
		apply_1000( $group );
	}

	sub apply_8000 {
		my ( $group ) = @_;
		apply_6000( $group );
		apply_2000( $group );
	}

	sub apply_9000 {
		my ( $group ) = @_;

		apply_6000( $group );
		apply_2000( $group );
		apply_1000( $group );

	}
}

sub slant_right_down {
	my ( $group, $offset_x, $offset_y ) = @_;

	my $points = $svg->get_path(
		x     => [ $offset_x + 0, $offset_x + 10, $offset_x + 35, $offset_x + 25 ],
		y     => [ $offset_y + 0, $offset_y + 0,  $offset_y + 25, $offset_y + 25 ],
		-type => 'polygon'
	);

	my $poly = $group->polygon(
		%$points,

	);

}

sub slant_left_up {
	my ( $group, $offset_x, $offset_y ) = @_;

	my $points = $svg->get_path(
		x     => [ $offset_x + 0,  $offset_x + 25, $offset_x + 35, $offset_x + 10 ],
		y     => [ $offset_y + 25, $offset_y + 0,  $offset_y + 0,  $offset_y + 25 ],
		-type => 'polygon'
	);

	my $poly = $group->polygon(
		%$points,

	);

}
open( my $ofh, '>:raw', 'glyph.svg' );
print $ofh $svg->xmlify;
close $ofh;
