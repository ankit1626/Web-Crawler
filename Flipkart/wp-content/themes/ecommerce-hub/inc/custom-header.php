<?php
/**
 * @package Ecommerce Hub
 * @subpackage ecommerce-hub
 * Setup the WordPress core custom header feature.
 *
 * @uses ecommerce_hub_header_style()
*/

function ecommerce_hub_custom_header_setup() {

	add_theme_support( 'custom-header', apply_filters( 'ecommerce_hub_custom_header_args', array(
		'default-text-color'     => 'fff',
		'header-text' 			 =>	false,
		'width'                  => 1600,
		'height'                 => 400,
		'wp-head-callback'       => 'ecommerce_hub_header_style',
	) ) );
}

add_action( 'after_setup_theme', 'ecommerce_hub_custom_header_setup' );

if ( ! function_exists( 'ecommerce_hub_header_style' ) ) :
/**
 * Styles the header image and text displayed on the blog
 *
 * @see ecommerce_hub_custom_header_setup().
 */
add_action( 'wp_enqueue_scripts', 'ecommerce_hub_header_style' );
function ecommerce_hub_header_style() {
	//Check if user has defined any header image.
	if ( get_header_image() ) :
	$ecommerce_hub_custom_css = "
        .header{
			background-image:url('".esc_url(get_header_image())."');
			background-position: center top;
		}";
	   	wp_add_inline_style( 'ecommerce-hub-basic-style', $ecommerce_hub_custom_css );
	endif;
}
endif; // ecommerce_hub_header_style