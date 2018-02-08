FROM searchathing/rdp

# vscode prereq
RUN apt-get install -y libnotify4 libnss3 libgconf-2-4 libsecret-1-0 libdbus-glib-1-2 gconf2-common libnspr4 libnss3-nssdb libsecret-common \
	libgtk2.0-0 libxss1 libasound2

# vscode
RUN curl -o /tmp/vscode.deb -L https://go.microsoft.com/fwlink/?LinkID=760865
RUN dpkg -i /tmp/vscode.deb && rm -f /tmp/vscode.deb
COPY vscode /usr/bin

CMD /bin/bash
