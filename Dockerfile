FROM mediawiki:latest

# Install Citizen skin
RUN git clone --depth 1 https://github.com/StarCitizenTools/mediawiki-skins-Citizen/ /var/www/html/skins/Citizen

# Install TabberNeue
RUN git clone https://github.com/StarCitizenTools/mediawiki-extensions-TabberNeue.git /var/www/html/extensions/TabberNeue

# Install CodeMirror
RUN git clone https://gerrit.wikimedia.org/r/mediawiki/extensions/CodeMirror /var/www/html/extensions/CodeMirror
