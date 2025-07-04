FROM mediawiki:latest

# Install Citizen skin
RUN git clone --depth 1 https://github.com/StarCitizenTools/mediawiki-skins-Citizen/ /var/www/html/skins/Citizen
