package MyWeb::App;
use Dancer2;

our $VERSION = '0.1';

use CGI qw(:cgi-lib :standard);

use warnings;

my %simple_form;
my $num1;
my $num2;
my $add;
my $subtract;
my $multiply;
my $divide;


#get '/' => sub {
#    template 'index' => { 'title' => 'MyWeb::App' };
#};

post '/process' => sub {
    return('process.pl');
};

get '/' => sub {

    <<FORM;
    <HTML>
    <BODY BGCOLOR=BLUE TEXT=WHITE>
    
    <H1>Basic Form </H1>
    
    <FORM ACTION=html METHOD=POST>
    Please Enter your first number:
    
    <INPUT TYPE=NUMBER NAME="num1"><BR>
    
    Please Enter your second number:
    <INPUT TYPE=NUMBER NAME="num2">
    <P>

    <INPUT TYPE=SUBMIT VALUE="Submit Form">
    </FORM>
        
    </BODY>
    </HTML>
FORM
};

post '/html' => sub {

    &ReadParse(%simple_form);                 # This grabs the data passed by the form and puts it in an array
    
    $num1 = $simple_form{'num1'};             # Get the user's name and assign to variable
    $num2 = $simple_form{'num2'};
    
    $add = $num1 + $num2;
    $subtract = $num1 - $num2;
    $multiply = $num1 * $num2;
    
    
    <<WOW;
    
    
    <HTML>
    <BODY BGCOLOR=BLUE TEXT=WHITE>
    <P>
    Your numbers are $num1 and $num2<BR><BR>
    $num1 and $num2 add up to $add<BR>
    $num1 and $num2 subtracted equals $subtract<BR>
    $num1 and $num2 multiplied equals $multiply<BR>
    $num1 and $num2 divided equals $divide<BR>
    <BR>
    <P>
    </BODY>
    </HTML>
WOW
};

dance;

true;
