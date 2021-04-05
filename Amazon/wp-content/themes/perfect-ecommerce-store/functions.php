<?php
/**
 * perfect-ecommerce-store functions and definitions
 *
 * 
 * @subpackage perfect-ecommerce-store
 * @since 1.0
 */

if ( version_compare( $GLOBALS['wp_version'], '4.7-alpha', '<' ) ) {
	require get_template_directory() . '/inc/back-compat.php';
	return;
}

function perfect_ecommerce_store_setup() {
	
	load_theme_textdomain( 'perfect-ecommerce-store' );
	add_theme_support( 'automatic-feed-links' );
	add_theme_support( 'woocommerce' );
	add_theme_support( 'title-tag' );
	add_theme_support( 'post-thumbnails' );
	add_theme_support( 'custom-background', $defaults = array(
    'default-color'          => '',
    'default-image'          => '',
    'default-repeat'         => '',
    'default-position-x'     => '',
    'default-attachment'     => '',
    'wp-head-callback'       => '_custom_background_cb',
    'admin-head-callback'    => '',
    'admin-preview-callback' => ''
	));

	add_image_size( 'perfect-ecommerce-store-thumbnail-avatar', 100, 100, true );

	$GLOBALS['content_width'] = 525;
	register_nav_menus( array(
		'top'    => __( 'Top Menu', 'perfect-ecommerce-store' ),
		'primary' => __( 'Primary Menu', 'perfect-ecommerce-store' ),
		'responsive-menu' => __( 'Responsive Menu', 'perfect-ecommerce-store' ),
	) );

	add_theme_support( 'html5', array(
		'comment-form',
		'comment-list',
		'gallery',
		'caption',
	) );

	// Add theme support for Custom Logo.
	add_theme_support( 'custom-logo', array(
		'width'       => 250,
		'height'      => 250,
		'flex-width'  => true,
	) );

	// Add theme support for selective refresh for widgets.
	add_theme_support( 'customize-selective-refresh-widgets' );

	/*
	* Enable support for Post Formats.
	*
	* See: https://codex.wordpress.org/Post_Formats
	*/
	add_theme_support( 'post-formats', array('image','video','gallery','audio',) );

	/*
	 * This theme styles the visual editor to resemble the theme style,
	 * specifically font, colors, and column width.
 	 */
	add_editor_style( array( 'assets/css/editor-style.css', perfect_ecommerce_store_fonts_url() ) );

}
add_action( 'after_setup_theme', 'perfect_ecommerce_store_setup' );

function perfect_ecommerce_store_widgets_init() {
	register_sidebar( array(
		'name'          => __( 'Blog Sidebar', 'perfect-ecommerce-store' ),
		'id'            => 'sidebar-1',
		'description'   => __( 'Add widgets here to appear in your sidebar on blog posts and archive pages.', 'perfect-ecommerce-store' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<div class="widget_container"><h3 class="widget-title">',
		'after_title'   => '</h3></div>',
	) );

	register_sidebar( array(
		'name'          => __( 'Sidebar 2', 'perfect-ecommerce-store' ),
		'id'            => 'sidebar-2',
		'description'   => __( 'Add widgets here to appear in your pages and posts', 'perfect-ecommerce-store' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<div class="widget_container"><h3 class="widget-title">',
		'after_title'   => '</h3></div>',
	) );

	register_sidebar( array(
		'name'          => __( 'Sidebar 3', 'perfect-ecommerce-store' ),
		'id'            => 'sidebar-3',
		'description'   => __( 'Add widgets here to appear in your pages and posts', 'perfect-ecommerce-store' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<div class="widget_container"><h3 class="widget-title">',
		'after_title'   => '</h3></div>',
	) );

	register_sidebar( array(
		'name'          => __( 'Footer 1', 'perfect-ecommerce-store' ),
		'id'            => 'footer-1',
		'description'   => __( 'Add widgets here to appear in your footer.', 'perfect-ecommerce-store' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );

	register_sidebar( array(
		'name'          => __( 'Footer 2', 'perfect-ecommerce-store' ),
		'id'            => 'footer-2',
		'description'   => __( 'Add widgets here to appear in your footer.', 'perfect-ecommerce-store' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );

	register_sidebar( array(
		'name'          => __( 'Footer 3', 'perfect-ecommerce-store' ),
		'id'            => 'footer-3',
		'description'   => __( 'Add widgets here to appear in your footer.', 'perfect-ecommerce-store' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );

	register_sidebar( array(
		'name'          => __( 'Footer 4', 'perfect-ecommerce-store' ),
		'id'            => 'footer-4',
		'description'   => __( 'Add widgets here to appear in your footer.', 'perfect-ecommerce-store' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );

	register_sidebar( array(
		'name' => __( 'Home Page Sidebar', 'perfect-ecommerce-store' ),
		'id' => 'homepage-sidebar',
		'description' => __( 'Add widgets here to appear in your homepage.', 'perfect-ecommerce-store' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<div class="widget_container"><h3 class="widget-title">',
		'after_title'   => '</h3></div>',
	) );
}
add_action( 'widgets_init', 'perfect_ecommerce_store_widgets_init' );

function perfect_ecommerce_store_fonts_url(){
	$font_url = '';
	$font_family = array();
	$font_family[] = 'Poppins:200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i';
	$font_family[] = 'Open Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800';
	
	$query_args = array(
		'family'	=> rawurlencode(implode('|',$font_family)),
	);
	$font_url = add_query_arg($query_args,'//fonts.googleapis.com/css');
	return $font_url;
}

//Enqueue scripts and styles.
function perfect_ecommerce_store_scripts() {
	// Add custom fonts, used in the main stylesheet.
	wp_enqueue_style( 'perfect-ecommerce-store-fonts', perfect_ecommerce_store_fonts_url(), array(), null );
	//Bootstarp 
	wp_enqueue_style( 'bootstrap', get_template_directory_uri().'/assets/css/bootstrap.css' );	
	// Theme stylesheet.
	wp_enqueue_style( 'perfect-ecommerce-store-style', get_stylesheet_uri() );

	// Load the Internet Explorer 9 specific stylesheet, to fix display issues in the Customizer.
	if ( is_customize_preview() ) {
		wp_enqueue_style( 'perfect-ecommerce-store-ie9', get_theme_file_uri( '/assets/css/ie9.css' ), array( 'perfect-ecommerce-store-style' ), '1.0' );
		wp_style_add_data( 'perfect-ecommerce-store-ie9', 'conditional', 'IE 9' );
	}
	// Load the Internet Explorer 8 specific stylesheet.
	wp_enqueue_style( 'perfect-ecommerce-store-ie8', get_theme_file_uri( '/assets/css/ie8.css' ), array( 'perfect-ecommerce-store-style' ), '1.0' );
	wp_style_add_data( 'perfect-ecommerce-store-ie8', 'conditional', 'lt IE 9' );
	//font-awesome
	wp_enqueue_style( 'font-awesome', get_template_directory_uri().'/assets/css/fontawesome-all.css' );
	// Load the html5 shiv.
	wp_enqueue_script( 'html5', get_theme_file_uri( '/assets/js/html5.js' ), array(), '3.7.3' );
	wp_script_add_data( 'html5', 'conditional', 'lt IE 9' );

	wp_enqueue_script( 'perfect-ecommerce-store-skip-link-focus-fix', get_theme_file_uri( '/assets/js/skip-link-focus-fix.js' ), array(), '1.0', true );

	$perfect_ecommerce_store_l10n=array();
	
	if ( has_nav_menu( 'top' ) ) {
		wp_enqueue_script( 'perfect-ecommerce-store-navigation', get_theme_file_uri( '/assets/js/navigation.js' ), array( 'jquery' ), '1.0', true );
		$perfect_ecommerce_store_l10n['expand']         = __( 'Expand child menu', 'perfect-ecommerce-store' );
		$perfect_ecommerce_store_l10n['collapse']       = __( 'Collapse child menu', 'perfect-ecommerce-store' );		
	}
	wp_enqueue_script( 'perfect-ecommerce-store-navigation', get_theme_file_uri( '/assets/js/navigation.js' ), array( 'jquery' ), '2.1.2', true );
	wp_enqueue_script( 'perfect-ecommerce-store-skip-link-focus-fix', get_theme_file_uri( '/assets/js/skip-link-focus-fix.js' ), array(), '1.0', true );
	wp_enqueue_script( 'bootstrap', get_template_directory_uri() . '/assets/js/bootstrap.js', array('jquery') );
	wp_enqueue_script( 'jquery-superfish', get_template_directory_uri() . '/assets/js/jquery.superfish.js', array('jquery') ,'',true);

	wp_localize_script( 'perfect-ecommerce-store-skip-link-focus-fix', 'perfect_ecommerce_storeScreenReaderText', $perfect_ecommerce_store_l10n );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'perfect_ecommerce_store_scripts' );

function perfect_ecommerce_store_front_page_template( $template ) {
	return is_home() ? '' : $template;
}
add_filter( 'frontpage_template',  'perfect_ecommerce_store_front_page_template' );

function perfect_ecommerce_store_sanitize_dropdown_pages( $page_id, $setting ) {
  // Ensure $input is an absolute integer.
  $page_id = absint( $page_id );
  // If $page_id is an ID of a published page, return it; otherwise, return the default.
  return ( 'publish' == get_post_status( $page_id ) ? $page_id : $setting->default );
}

function perfect_ecommerce_store_sanitize_choices( $input, $setting ) {
    global $wp_customize; 
    $control = $wp_customize->get_control( $setting->id ); 
    if ( array_key_exists( $input, $control->choices ) ) {
        return $input;
    } else {
        return $setting->default;
    }
}

//footer Link
define('PERFECT_ECOMMERCE_STORE_LIVE_DEMO',__('https://luzukdemo.com/demo/perfect-ecommerce-store/','perfect-ecommerce-store'));
define('PERFECT_ECOMMERCE_STORE_PRO_DOCS',__('https://luzukdemo.com/demo/perfect-ecommerce-store/documentation/','perfect-ecommerce-store'));
define('PERFECT_ECOMMERCE_STORE_BUY_NOW',__('https://www.luzuk.com/product/premium-ecommerce-wordpress-theme/','perfect-ecommerce-store'));
define('PERFECT_ECOMMERCE_STORE_SUPPORT',__('https://wordpress.org/support/theme/perfect-ecommerce-store/','perfect-ecommerce-store'));
define('PERFECT_ECOMMERCE_STORE_CREDIT',__('https://www.luzuk.com/themes/free-ecommerce-wordpress-theme/','perfect-ecommerce-store'));

if ( ! function_exists( 'perfect_ecommerce_store_credit' ) ) {
	function perfect_ecommerce_store_credit(){
		echo "<a href=".esc_url(PERFECT_ECOMMERCE_STORE_CREDIT)." target='_blank'>".esc_html__('Ecommerce WordPress Theme','perfect-ecommerce-store')."</a>";
	}
}

/* Excerpt Limit Begin */
function perfect_ecommerce_store_string_limit_words($string, $word_limit) {
	$words = explode(' ', $string, ($word_limit + 1));
	if(count($words) > $word_limit)
	array_pop($words);
	return implode(' ', $words);
}

// Change number or products per row to 3
add_filter('loop_shop_columns', 'perfect_ecommerce_store_loop_columns');
if (!function_exists('perfect_ecommerce_store_loop_columns')) {
	function perfect_ecommerce_store_loop_columns() {
		return 3; // 3 products per row
	}
}

function perfect_ecommerce_store_sanitize_checkbox( $input ) {
	
	// Boolean check 
	return ( ( isset( $input ) && true == $input ) ? true : false );
}

require get_parent_theme_file_path( '/inc/custom-header.php' );

require get_parent_theme_file_path( '/inc/template-tags.php' );

require get_parent_theme_file_path( '/inc/template-functions.php' );

require get_parent_theme_file_path( '/inc/customizer.php' );