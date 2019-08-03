FROM searchathing/rdp:server-mgr

# vscode prereq
#RUN apt-get install -y libnotify4 libnss3 libgconf-2-4 libsecret-1-0 libdbus-glib-1-2 gconf2-common libnspr4 libsecret-common \
#	libgtk2.0-0 libxss1 libasound2

# vscode
COPY Downloads/code_1.36.1-1562627527_amd64.deb /tmp
RUN dpkg -i /tmp/code_1.36.1-1562627527_amd64.deb && rm -f /tmp/code_1.36.1-1562627527_amd64.deb

CMD /bin/bash
