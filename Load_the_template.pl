#!/usr/bin/perl
# Load the template
###

### Load the Template							###

    my $tmpl = new HTML::Template( temp1 => TEMPLATE )

### Populate the template						###

### This replaces all instances of <tmpl_var name=KEY with value in the
### template file> when the browser displays the file			###
    $tmpl->param( KEY => VALUE );

### Display the HTML							###

### After the template's parameters have all been populated, and all
### supporting Perl logic has been called, the last thing the CGI script
### should do is print the CGI header and generated template's output.

    print header();
    print $tmpl->output;
