#!/data/data/com.termux/files/usr/bin/bash
pkg install x11-repo -y
pkg install tigervnc xfce4 xfce4-goodies firefox -y
mkdir -p $HOME/.vnc
echo "#!/data/data/com.termux/files/usr/bin/sh" >> $HOME/.vnc/xstartup
echo 'export DISPLAY=":1"' >> $HOME/.vnc/xstartup
echo "startxfce4 &" >> $HOME/.vnc/xstartup
chmod a+x $HOME/.vnc/xstartup
echo "Type vncserver to start VNC Server. IP: localhost:5901"
vncserver
