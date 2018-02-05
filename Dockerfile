FROM searchathing/rdp

# dotnet core
RUN curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg && \
	sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg && \
	sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list' && \
	apt-get update && \
	apt-get install -y dotnet-sdk-2.1.4

# vscode prereq
RUN apt-get install -y libnotify4 libnss3 libgconf-2-4 libsecret-1-0 libdbus-glib-1-2 gconf2-common libnspr4 libnss3-nssdb libsecret-common \
	libgtk2.0-0 libxss1 libasound2

# vscode
RUN curl -o /tmp/vscode.deb -L https://go.microsoft.com/fwlink/?LinkID=760865
RUN dpkg -i /tmp/vscode.deb && rm -f /tmp/vscode.deb
COPY vscode /usr/bin

# bower
RUN npm install -g bower

CMD /bin/bash
