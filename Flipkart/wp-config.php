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
define( 'DB_NAME', 'flipkart' );

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
define( 'AUTH_KEY',         'XD|buUbG#-alR^E0l0luAWEFK78za@i])X#rOpR^0_AJjaFMjC|#OLlh*AcPUH1o' );
define( 'SECURE_AUTH_KEY',  'U[R/eLTOiCn$zrybsN7iO[7=1zlEUf@-NiS?bC%,[_R.^ldc^Y|t/kkyfnW9iJpU' );
define( 'LOGGED_IN_KEY',    'XwX1[G,`:85LX Wn@byYS2^prn{@lP-@W;Es+Q*bI+s)P|.I0eCP[>y dIlSmxf-' );
define( 'NONCE_KEY',        't48ac=ZAEor/U@MJz_11mq9jOcJ2+!}&j&r6TI,3%VPA[.oeP%`n!:ym@6c8$l^J' );
define( 'AUTH_SALT',        'eNj4+hfE1<hoVs-*+$uNfiyh/yW-/3<Q.L(plk}QFf)qC:|Cyu&NUq/i}q/*[vlT' );
define( 'SECURE_AUTH_SALT', '{[4^]I_jw>]acrg3SY3!oF~hi&b6:*NxE<s~&L_0M8sS+K^kt:X7k[:S364uH?yT' );
define( 'LOGGED_IN_SALT',   '=mR13jf8dTu%@x{ZYS@GNuUtX5bEM)h]O0#4Mmt^V`?+YJb{~]l+.NX]_6/-Nc3b' );
define( 'NONCE_SALT',       '4=%hR0_,P:t}04[RqNt8F_I9uzsblJC@oz*X_]7?A]0v}6!IUSW]?lfytg`8EbVt' );

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
