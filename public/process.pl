#!/usr/bin/perl

# Program Name: process.pl
# Author: D. W. Hyatt
# This program uses the data passed by the form program and creates
# a new web page with that information.

use CGI qw(:cgi-lib :standard);  # Use CGI modules that let people read data passed from a form


&ReadParse(%in);                 # This grabs the data passed by the form and puts it in an array

$name = $in{"name"};             # Get the user's name and assign to variable
$preference = $in{"choice"};     # Get the choice and assign to variable

# Start printing HTML document
print<<EOSTUFF;
Content-type: text/html

<HTML>
<BODY BGCOLOR=WHITE TEXT=BLACK>
<H1> Hello, $name </H1>          <!-- Use variables in HTML text -->
You prefer  $preference.
<BR>
EOSTUFF

for ($i=1; $i<=5; $i++)          # Print name 5 times
{print "$i. $name <BR>";}

print<<EOF;                      <!-- Finish up document -->
</BODY>
</HTML>
EOF
