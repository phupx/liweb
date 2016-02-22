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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'liwebdb');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Y#+e)?B.iOzVx{!aI>7[zN/RM.DNC+DHG!{b96JNT6mev#0C+tpnc<*JqDSkJ4)(');
define('SECURE_AUTH_KEY',  'LK|m^~6+A3TiUU^cAZEv@#yq{y{3wxgF$OAy+1}a<hp2-W)W[E{]v/z%iG3x7DQ3');
define('LOGGED_IN_KEY',    '_O][w<gC >I@mZ4+)-nP#KlJs-s*}>3:N,wW8/=3$%80y~]J!V7f#jr)k<09Z|:+');
define('NONCE_KEY',        '+}_m[oFv)+|ac-*)%8B:zPx&+$%GT-/&tbw{(J$d)(V6w)< c@e&aiIRx{SBudC-');
define('AUTH_SALT',        '-oGMdxNBs;0s~70S+~u5g<GP`BVXr?bO8D6d~CmHaT|mb^>Vmnt[A^x%CN&G>4^U');
define('SECURE_AUTH_SALT', '9>+[TYiem #?URTqaN+=f1!|^qbT^K26Mf#H,3V>H[(E!NWS4ptm{A<qY/>k&DTz');
define('LOGGED_IN_SALT',   'Y0jPm(sLG$%Tvh~q5+aHJGC=:P|P)z_0|.WwVXa>-Qe--r|P&dm|l-lo%#;r6wa^');
define('NONCE_SALT',       ',PWucFB`[tO]]bZ@k:V:`sLcQb{3J5RrHO74[TD_;;z+hhL=fo:A?{:pUNtRNSnW');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
