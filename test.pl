#!/usr/local/bin/perl -w
use strict;
use Carp 'confess', 'croak';
use Test;

use lib '../../';  # TESTING
use SQL::YASP;     # TESTING


BEGIN { plan tests => 1 };


my ($sql, $stmt, $rec);


#vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
$sql = <<'(SQL)';

select
	name
from
	members
where
	id=1

(SQL)
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

$stmt = SQL::YASP->parse($sql);

if ($stmt)
	{ok 1}
