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
<<EOSTUFF;
Content-type: text/html

<HTML>
<BODY BGCOLOR=WHITE TEXT=BLACK>
<H1> Hello, $name </H1>
You prefer  $preference.
<BR>
</BODY>
</HTML>
EOSTUFF
