#!/usr/local/bin/perl -w

use DBI;

#-----------------------------------------------------;
# database Postgres, localhost, db=checkmail          ;
#	Test connect                                  ;
#-----------------------------------------------------;
$USER = 'sa';
$DATABASE = "dbi:Pg:dbname=mail_bayes;host=localhost";
$PASS = 'sa';

$dbhandle = DBI->connect($DATABASE,$USER,$PASS) || &error("Couldn't connect to DB.\n" .$?);

#error function (body function)
sub error
{
    my($errmsg) = shift;
	print $errmsg;
	    exit;
};

$dbhandle->disconnect();
