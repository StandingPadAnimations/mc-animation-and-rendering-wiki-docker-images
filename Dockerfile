FROM mediawiki:1.46

# Install Citizen skin
RUN git clone --depth 1 https://github.com/StarCitizenTools/mediawiki-skins-Citizen/ /var/www/html/skins/Citizen

# Install TabberNeue
RUN git clone --depth 1 https://github.com/StarCitizenTools/mediawiki-extensions-TabberNeue.git /var/www/html/extensions/TabberNeue

# Write robots.txt cleanly using a heredoc
RUN cat <<'EOF' > /var/www/html/robots.txt
User-agent: *
Disallow: /index.php?
Disallow: /skins/
Disallow: /api.php
Disallow: /load.php
Disallow: /title/File:
Disallow: /title/Image:
Disallow: /title/MediaWiki:
Disallow: /title/Special:
Disallow: /title/Template:
EOF
