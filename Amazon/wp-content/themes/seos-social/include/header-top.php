<?php
// Do not allow direct access to the file.
if( ! defined( 'ABSPATH' ) ) {
    exit;
}
/**
 * Header Top
 *
 */
function seos_social_header () {
?>
<header id="masthead" class="site-header" itemscope="itemscope" itemtype="http://schema.org/WPHeader">
	<?php if (get_theme_mod( 'seos_social_active_social')) {   seos_social_social_section (); } ?>	
	<!-- Header Image  -->
	<div class="all-header">
    	<div class="s-shadow"></div>
		<?php if (get_theme_mod( 'header_image_position' ) == 'default' ) { ?>
		<img id="masthead" class="header-image" src='<?php echo esc_url(get_template_directory_uri() ) . '/images/header.png'; ?>' alt="<?php esc_attr_e( 'header image','seos-social' ); ?>"/>	
		<?php } ?>
		<?php if (get_theme_mod( 'header_image_position' ) == 'real' ) { ?>
		<img id="masthead" class="header-image" src='<?php if ( !is_home() and has_post_thumbnail() and get_post_meta( get_the_ID(), 'seos_social_value_header_image', true ) ) { the_post_thumbnail_url(); } else { header_image(); } ?>' alt="<?php esc_attr_e( 'header image','seos-social' ); ?>"/>	
		<?php } else { ?>
		<div id="masthead" class="header-image" style="background-image: url( '<?php if (  !is_home() and has_post_thumbnail() and get_post_meta( get_the_ID(), 'seos_social_value_header_image', true ) ) { the_post_thumbnail_url(); } else { header_image(); } ?>' );"></div>
		<?php } ?>

		<div class="site-branding">
			<span class="ml15">
			<?php
			
			if ( is_front_page() && is_home() ) :
				?>
					<h1 class="site-title" itemscope itemtype="http://schema.org/Brand"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><span class="word"><?php bloginfo( 'name' ); ?></span></a></h1>

					<?php
				else :
					?>
					<p class="site-title" itemscope itemtype="http://schema.org/Brand"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><span class="word"><?php bloginfo( 'name' ); ?></span></a></p>
					
					<?php
				endif;
				$seos_social_description = esc_html(get_bloginfo( 'description', 'display' ) );
				if ( $seos_social_description || is_customize_preview() ) :
					?>    
					<p class="site-description" itemprop="headline">
						<span class="word"><?php echo esc_html($seos_social_description); ?></span>
					</p>

				<?php endif; ?>	
			</span>
			
		<!-- Header Buttons  -->			
		<?php if (get_theme_mod('header_button_1')) { ?>
		<a href="<?php echo esc_url(get_theme_mod( 'header_button_1_link' ) ); ?>">
			<div class="h-button-1">
			<?php echo esc_html(get_theme_mod( 'header_button_1' ) ); ?>
			</div>
		</a>
		<?php } ?>
		
		<?php if (get_theme_mod('header_button_2')) { ?>
		<a href="<?php echo esc_url(get_theme_mod( 'header_button_2_link' ) ); ?>">
			<div class="h-button-2">
			<?php echo esc_html(get_theme_mod( 'header_button_2' ) ); ?>
			</div>
		</a>
		<?php } ?>			
		</div>
		<!-- .site-branding -->
		
	</div>
	<!-- Recent Posts Slider  -->
	<?php if (( is_front_page() or is_home()) and  get_theme_mod('seos_social_activate_conveyor_ticker_home')) { 
	 echo esc_html(seos_social_slider_sticky ()); 
	 } ?>
	 <?php if (( !is_front_page() or !is_home()) and  get_theme_mod('seos_social_activate_conveyor_ticker_all')) { 
	 echo esc_html(seos_social_slider_sticky ()); 
	 } ?>
	<div class="grid-top">
		<div class="header-right"itemprop="logo" itemscope itemtype="http://schema.org/Brand">
			<?php the_custom_logo(); ?>
		</div>	
		<!-- Site Navigation  -->
		<button id="s-button-menu"><img src="<?php echo esc_url(get_template_directory_uri() ) . '/images/mobile.jpg'; ?>"/></button>
		<nav id="site-navigation" class="main-navigation" role="navigation">
				<button class="menu-toggle" aria-controls="primary-menu" aria-expanded="false"><?php esc_html_e( 'Menu', 'seos-social' ); ?></button>
				<?php wp_nav_menu( array( 
				'theme_location' => 'primary',
				'menu_id' => 'primary-menu',
				) ); ?>
		</nav><!-- #site-navigation -->

	</div>	
		 
</header>
<?php }