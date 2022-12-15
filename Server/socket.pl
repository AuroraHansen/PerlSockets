#! /usr/bin/perl

use IO::Socket::INET;
use strict;

my $server_socket = IO::Socket::INET->new(
'LocalPort' => '2008',
'Proto' => 'tcp',
'Reuse' => 1,
'Listen' => SOMAXCONN
) or die "Não foi possível criar o socket. ($!)\n";

print "Servidor iniciado.\n";

while (my $cliente = $server_socket->accept){
while (<$cliente>) {
print "Mensagem recebida: $_";
print $cliente "Mensagem enviada: $_ ";
}
