#!/data/data/com.termux/files/usr/bin/sh
pkg update -y
pkg upgrade -y
pkg install x11-repo -y
pkg install tigervnc xfce4 xfce4-goodies firefox -y
echo "#!/data/data/com.termux/files/usr/bin/sh" >> $HOME/.vnc/xstartup
echo 'export DISPLAY=":1"' >> $HOME/.vnc/xstartup
echo "xfce4-session &" >> $HOME/.vnc/xstartup
vncserver
echo "Type vncserver -kill :1 to stop, type vncserver to start."