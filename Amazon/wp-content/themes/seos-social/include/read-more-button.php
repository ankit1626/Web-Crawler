<?php if( ! defined( 'ABSPATH' ) ) exit;
	
/**
 * Read More Button
 */

	function seos_social_excerpt_more( $more ) {
		if ( is_admin() ) {
			return $more;
		}
        return '<p class="link-more"><a class="myButt " href="'. esc_url(get_permalink( get_the_ID() ) ) . '">' . seos_social_return_read_more_text (). '</a></p>';
	}
	add_filter( 'excerpt_more', 'seos_social_excerpt_more' );	
	
	function seos_social_excerpt_length( $length ) {
			if ( is_admin() ) {
					return $length;
			}
			return 22;
	}
	add_filter( 'excerpt_length', 'seos_social_excerpt_length', 999 );
	
	function seos_social_return_read_more_text () {
		return __( 'Read More','seos-social');
	}