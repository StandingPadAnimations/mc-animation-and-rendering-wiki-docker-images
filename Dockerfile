FROM mediawiki:1.44.2

# Install Citizen skin
RUN git clone --depth 1 https://github.com/StarCitizenTools/mediawiki-skins-Citizen/ /var/www/html/skins/Citizen

# Install TabberNeue
RUN git clone --depth 1 https://github.com/StarCitizenTools/mediawiki-extensions-TabberNeue.git /var/www/html/extensions/TabberNeue
