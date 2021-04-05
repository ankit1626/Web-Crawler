<?php
/**
 * Template part for displaying posts
 * 
 * @subpackage perfect-ecommerce-store
 * @since 1.0
 * @version 1.4
 */

?>

<?php
	$content = apply_filters( 'the_content', get_the_content() );
	$video = false;

	// Only get video from the content if a playlist isn't present.
	if ( false === strpos( $content, 'wp-playlist-script' ) ) {
		$video = get_media_embedded_in_content( $content, array( 'video', 'object', 'embed', 'iframe' ) );
	}
?>

<article class="article_content col-md-12 col-sm-12" id="post-<?php the_ID(); ?>" <?php post_class(); ?>>	
	<header role="banner" class="entry-header">
		<?php		
			if ( is_single() ) {
				the_title( '<h1 class="entry-title">', '</h1>' );
			} elseif ( is_front_page() && is_home() ) {
				the_title( '<h3 class="entry-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h3>' );
			} else {
				the_title( '<h2 class="entry-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
			}
		?>
	</header>

	<?php if ( '' !== get_the_post_thumbnail() && ! is_single() ) : ?>
		<?php
			if ( ! is_single() ) {
				// If not a single post, highlight the video file.
				if ( ! empty( $video ) ) {
					foreach ( $video as $video_html ) {
						echo '<div class="entry-video">';
							echo $video_html;
						echo '</div>';
					}
				};
			}; 
		?> 
	<?php endif; ?>

	<div class="entry-content">
		<?php
		/* translators: %s: Name of current post */
		if ( is_single() ) :
			the_content();
		else :
		    the_excerpt(); ?>
		    <div class="continue-btn">
		        <a href="<?php the_permalink();?>" class="blogbutton-small" title="<?php esc_attr_e( 'Continue Reading', 'perfect-ecommerce-store' ); ?>"><?php esc_html_e('Continue Reading','perfect-ecommerce-store'); ?><span class="screen-reader-text"><?php esc_html_e('Continue Reading','perfect-ecommerce-store'); ?></span>
		        </a>
		    </div>
		<?php endif;
		

		wp_link_pages( array(
			'before'      => '<div class="page-links">' . __( 'Pages:', 'perfect-ecommerce-store' ),
			'after'       => '</div>',
			'link_before' => '<span class="page-number">',
			'link_after'  => '</span>',
		) );
		?>
	</div>

	<?php
	if ( is_single() ) {
		perfect_ecommerce_store_entry_footer();
	}
	?>
</article>