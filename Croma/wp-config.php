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
define( 'DB_NAME', 'Croma' );

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
define( 'AUTH_KEY',         'd^rzsP;Ka0yOGlka*O6t;O<Ehr#NV K8O7I_$mMLjn*<$4)gd-dBQz_;[<nx*^,4' );
define( 'SECURE_AUTH_KEY',  'vk1 +s1?uc%<_~bLFSyyS#8Xbv`X-zMG;[5HPwpD_?7kA`[O;|gdgVv^G9J3T<=s' );
define( 'LOGGED_IN_KEY',    '|y;ja*b(]>;W1m35v4Z})IDtx|E|HCw~h=/6-uhA`2A!0v#6Y=9%9~ff4<_pXhh,' );
define( 'NONCE_KEY',        'VV197]9`;1]z#xkn.X#/R2Y4NZ1/G-}#C&@I(tOUVwS_7-y,4oj@o+mGd>5A]26a' );
define( 'AUTH_SALT',        'BAQ:c@oc/QI;8Th0)D[0e[yC`:Ct);Qgl4F &~&nWUVk_B;H*Fui;E6,TF^?TuV|' );
define( 'SECURE_AUTH_SALT', '=F#~QhRL9= k`5TN%a=/@z.Z3(Y&[g/K|hr]>*VNOq9l`WvU9{)XX#J-56)PlNHU' );
define( 'LOGGED_IN_SALT',   '/0Q!]Y?}X%[K2E46R*ot6]IH&rf2t[rOZ8[R R(Eu>!MT#u n_T:/|XHAV,ecis(' );
define( 'NONCE_SALT',       '/24;6CF3K9!]#zpBKoac4oSz8XV+?kE/MG)TTR<Zt}*l*>^&U[_`t$fa`RmYImgl' );

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
