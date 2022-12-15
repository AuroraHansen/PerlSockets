#! /usr/bin/perl

use IO::Socket::INET;
use strict;

my $cliente_socket = IO::Socket::INET->new(
'PeerAddr' => 'localhost',
'PeerPort' => '2008',
'Proto' => 'tcp'
) or die "Não foi possível criar o socket. ($!)\n";

print "Digite sua mensagem e aperte enter.\n";

while (<STDIN>)
{print $cliente_socket $_;
print scalar <$cliente_socket>;}
