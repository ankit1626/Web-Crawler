<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'amazon' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'IZ7j2V3+PEV_P(9,DP(NS:T1hH-n#g/~:YMzknWnIS1VqyTo-q-fh18+=^b4ZxVZ' );
define( 'SECURE_AUTH_KEY',  '#I6lyq+s7B?!)AFq5({fKe%F(*YI#n+$^@;BtB-SojC@`{l1y83F*QlX+`_r90?P' );
define( 'LOGGED_IN_KEY',    '@1+NnPg>]gY[A/iKNnO?^.CPG=0&~c)BCVu+t!ObnT_Y;c-[}:abQI!Sp9]c(f]8' );
define( 'NONCE_KEY',        ':a<=)^6H6vfb|h)`m4xkG8;-LD~Q2K?b5psF_{?V8q*yT&m=4^PsyCkF51t~|cZi' );
define( 'AUTH_SALT',        'Ym4B<P(<s[{[,/U&V:GG_vrr~w0ip6cy{v7TDCLZKT]+W)8J[8:F{}7*iA.lM9[9' );
define( 'SECURE_AUTH_SALT', 'iejAvfinLQgT+s*D%o7@luMGZ`$r:rz9h]h#,r/^4yw2O.bG#j<4T 5AtD_vvm_r' );
define( 'LOGGED_IN_SALT',   'B!}A-P7Vd7L#o`bWlI)3LwielQYKII,~<B=4Rz-Gt6>My7(MT_d.Q.ZO;EK2dOx8' );
define( 'NONCE_SALT',       '/=(Ooh_0j(/Ek(U!/3O;ptKph*R~qvLBy}OjjrH/D<[4*WR%58*NGZ*kn#mQR@EN' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
