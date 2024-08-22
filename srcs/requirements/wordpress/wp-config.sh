#!/bin/sh
cat <<EOF > '/var/www/localhost/htdocs/wordpress/wp-config.php'
<?php
define('DB_NAME',          '$DB_NAME');
/** Database username */
define('DB_USER',          '$DB_ADMN');
/** Database password */
define('DB_PASSWORD',      '$DB_ADMNPWD');
/** Database hostname */
define('DB_HOST',          '$DB_HOST');
define('AUTH_KEY',         '$WP_AUTHKEY');
define('SECURE_AUTH_KEY',  '$WP_SECURE_AUTH_KEY');
define('LOGGED_IN_KEY',    '$WP_LOGGED_IN_KEY');
define('NONCE_KEY',        '$WP_NONCE_KEY');
define('AUTH_SALT',        '$WP_AUTH_SALT');
define('SECURE_AUTH_SALT', '$WP_SECURE_AUTH_SALT');
define('LOGGED_IN_SALT',   '$WP_LOGGED_IN_SALT');
define('NONCE_SALT',       '$WP_NONCE_SALT');
\$table_prefix = 'wp_';
define( 'WP_DEBUG',        '$WP_DEBUG');

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}
require_once ABSPATH . 'wp-settings.php';
EOF
