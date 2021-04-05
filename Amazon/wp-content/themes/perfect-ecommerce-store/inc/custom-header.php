<?php
/**
 * Custom header implementation
 */

function perfect_ecommerce_store_custom_header_setup() {
	add_theme_support( 'custom-header', apply_filters( 'perfect_ecommerce_store_custom_header_args', array(
		'default-text-color'     => 'fff',
		'header-text' 			 =>	false,
		'width'                  => 1300,
		'height'                 => 75,
		'wp-head-callback'       => 'perfect_ecommerce_store_header_style',
	) ) );
}

add_action( 'after_setup_theme', 'perfect_ecommerce_store_custom_header_setup' );

if ( ! function_exists( 'perfect_ecommerce_store_header_style' ) ) :
/**
 * Styles the header image and text displayed on the blog
 *
 * @see perfect_ecommerce_store_custom_header_setup().
 */
add_action( 'wp_enqueue_scripts', 'perfect_ecommerce_store_header_style' );
function perfect_ecommerce_store_header_style() {
	//Check if user has defined any header image.
	if ( get_header_image() ) :
	$custom_css = "
        .page-template-custom-home-page .main-top, .site-header{
			background-image:url('".esc_url(get_header_image())."');
			background-position: center top;
			background-size: cover;
		}";
	   	wp_add_inline_style( 'perfect-ecommerce-store-style', $custom_css );
	endif;
}
endif; // perfect_ecommerce_store_header_style
