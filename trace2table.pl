#!/usr/bin/perl

use strict;
use warnings;

my $indent_max = 0;
my @trace;
my $count = 0;

while (<>) {
	if (/^ *[0-9]+( +)\-> ([^ ]+)/) {
		my $indent = length($1) / 2;
		$indent_max = $indent if ($indent_max < $indent);
		$trace[$count]{'indent'} = $indent;
		$trace[$count++]{'function'} = $2;
	}
}

print "<style type=\"text/css\">\n";
print "td {\n";
print "\twidth: 10%;\n";
print "}</style>\n";

print "<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"1\" width=\"800\">\n";
print "\t<tbody>\n";

my @caller;
$caller[0] = $trace[0]{'function'};
for $count (0 .. $#trace ){
	$caller[$trace[$count]{'indent'}] = $trace[$count]{'function'};
	print "\t\t<tr>\n";
	print "\t\t\t<td colspan=\"" . $trace[$count]{'indent'} . "\">\n";
	print "\t\t\t\t&nbsp;</td>\n";
	print "\t\t\t<td colspan=\"" . ($indent_max + 1 - $trace[$count]{'indent'}) . "\">\n";
	print "\t\t\t\t-&gt; <a href=\"http://src.illumos.org//source/s?defs=" .
			$caller[$trace[$count]{'indent'} - 1] .
			"&project=illumos-gate\" target=\"_blank\">" .
			$trace[$count]{'function'} . "</a></td>\n";
	print "\t\t\t<td>\n";
	print "\t\t\t\t&nbsp;</td>\n";
	print "\t\t</tr>\n";
}
print "\t</tbody>\n";
print "</table>\n";
