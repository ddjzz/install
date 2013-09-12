
# When we change config file: /etc/nxserver/node.conf in server, we don't need to reboot, just restsrt service:

sudo /etc/init.d/freenx-server restart
# svr01@svr01:~$ sudo vim /etc/nxserver/node.conf
# [sudo] password for svr01: 
# svr01@svr01:~$ sudo /etc/init.d/freenx-server restart
# NX> 100 NXSERVER - Version 3.2.0-74-SVN OS (GPL, using backend: 3.5.0)
# NX> 500 Error: No running sessions found.
# NX> 999 Bye
# NX> 100 NXSERVER - Version 3.2.0-74-SVN OS (GPL, using backend: 3.5.0)
# NX> 500 ERROR: Service already running
# NX> 999 Bye
# svr01@svr01:~$


