<?php
/**
 * The sidebar containing the main widget area
 * 
 * @subpackage perfect-ecommerce-store
 * @since 1.0
 * @version 1.4
 */

if ( ! is_active_sidebar( 'sidebar-1' ) ) {
	return;
}
?>

<aside id="sidebar" class="widget-area" role="complementary">
	<?php dynamic_sidebar( 'sidebar-1' ); ?>
</aside>
