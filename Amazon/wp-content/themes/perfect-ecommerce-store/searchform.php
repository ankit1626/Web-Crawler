<?php
/**
 * Template for displaying search forms in perfect-ecommerce-store
 *
 * @subpackage perfect-ecommerce-store
 * @since 1.0
 * @version 1.4
 */

?>

<?php $unique_id = esc_attr( uniqid( 'search-form-' ) ); ?>

<form role="search" method="get" class="search-form" action="<?php echo esc_url( home_url( '/' ) ); ?>">
	<label >
		<span class="screen-reader-text"><?php echo esc_html_x( 'Search for:', 'label', 'perfect-ecommerce-store' ); ?></span>
		<input type="search" class="search-field" placeholder="<?php echo esc_attr_x( 'Search &hellip;', 'placeholder', 'perfect-ecommerce-store' ); ?>" value="<?php echo get_search_query(); ?>" name="s" />
	</label>
	<button type="submit" class="search-submit"><?php echo esc_html_x( 'Search', 'submit button', 'perfect-ecommerce-store' ); ?></button>
</form>