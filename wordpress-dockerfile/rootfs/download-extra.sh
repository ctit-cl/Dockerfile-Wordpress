#!/bin/bash -e
curl -o /tmp/bbpress.2.5.14.zip https://downloads.wordpress.org/plugin/bbpress.2.5.14.zip
curl -o /tmp/gambit.1.5.3.zip https://downloads.wordpress.org/theme/gambit.1.5.3.zip
unzip -o /tmp/bbpress.2.5.14.zip -d /opt/bitnami/wordpress/wp-content/plugins
unzip -o /tmp/gambit.1.5.3.zip -d /opt/bitnami/wordpress/wp-content/themes
/opt/bitnami/wp-cli/bin/wp plugin activate bbpress
/opt/bitnami/wp-cli/bin/wp theme activate gambit