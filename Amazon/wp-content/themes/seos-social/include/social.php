<?php if( ! defined( 'ABSPATH' ) ) exit;

	function seos_social_social_section () { ?>
		
			<div <?php if(get_theme_mod( 'social_media_activate' )){ ?> style="float: none;"<?php } ?> class="social-top">
			
				<?php if (get_theme_mod( 'seos_social_facebook' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' )) == "_blank"){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_facebook' )); ?>"><i class="fa fa-facebook-f"></i></a>
				<?php endif; ?>
							
				<?php if (get_theme_mod( 'seos_social_twitter' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_twitter' )) ?>"><i class="fa fa-twitter"></i></a>
				<?php endif; ?>

				<?php if (get_theme_mod( 'seos_social_youtube' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_youtube' )); ?>"><i class="fa fa-youtube"></i></a>
				<?php endif; ?>
																			
				<?php if (get_theme_mod( 'seos_social_vimeo' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_vimeo' )); ?>"><i class="fa fa-vimeo"></i></a>
				<?php endif; ?>
																			
				<?php if (get_theme_mod( 'seos_social_pinterest' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_pinterest' )); ?>"><i class="fa fa-pinterest"></i></a>
				<?php endif; ?>	
				
				<?php if (get_theme_mod( 'seos_social_instagram' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_instagram' )); ?>"><i class="fa fa-instagram" aria-hidden="true"></i></a>
				<?php endif; ?>
																			
				<?php if (get_theme_mod( 'seos_social_linkedin' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_linkedin' )); ?>"><i class="fa fa-linkedin"></i></a>
				<?php endif; ?>
																			
				<?php if (get_theme_mod( 'seos_social_rss' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_rss' )); ?>"><i class="fa fa-rss"></i></a>
				<?php endif; ?>
																			
				<?php if (get_theme_mod( 'seos_social_stumbleupon' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_stumbleupon' )); ?>"><i class="fa fa-stumbleupon"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'seos_social_flickr' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_flickr' )); ?>"><i class="fa fa-flickr" aria-hidden="true"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'seos_social_dribbble' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_dribbble' )); ?>"><i class="fa fa-dribbble"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'seos_social_digg' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_digg' )); ?>"><i class="fa fa-digg"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'seos_social_skype' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_skype' )); ?>"><i class="fa fa-skype"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'seos_social_deviantart' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_deviantart' )); ?>"><i class="fa fa-deviantart"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'seos_social_yahoo' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_yahoo' )); ?>"><i class="fa fa-yahoo"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'seos_social_reddit_alien' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_reddit_alien' )); ?>"><i class="fa fa-reddit-alien"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'seos_social_paypal' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_paypal' )); ?>"><i class="fa fa-paypal"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'seos_social_dropbox' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_dropbox' )); ?>"><i class="fa fa-dropbox"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'seos_social_soundcloud' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_soundcloud' )); ?>"><i class="fa fa-soundcloud"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'seos_social_vk' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_vk' )); ?>"><i class="fa fa-vk"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'seos_social_envelope' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_envelope' )); ?>"><i class="fa fa-envelope"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'seos_social_address_book' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_address_book' )); ?>"><i class="fa fa-address-book" aria-hidden="true"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'seos_social_apple' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_apple' )); ?>"><i class="fa fa-apple"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'seos_social_address_amazon' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_address_amazon' )); ?>"><i class="fa fa-amazon"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'seos_social_slack' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_slack' )); ?>"><i class="fa fa-slack"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'seos_social_slideshare' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_slideshare' )); ?>"><i class="fa fa-slideshare"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'seos_social_address_wikipedia' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_address_wikipedia' )); ?>"><i class="fa fa-wikipedia-w"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'seos_social_wordpress' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_wordpress' )); ?>"><i class="fa fa-wordpress"></i></a>
				<?php endif; ?>
																							
				<?php if (get_theme_mod( 'seos_social_odnoklassniki' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_odnoklassniki' )); ?>"><i class="fa fa-odnoklassniki"></i></a>
				<?php endif; ?>
																											
				<?php if (get_theme_mod( 'seos_social_tumblr' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_tumblr' )); ?>"><i class="fa fa-tumblr"></i></a>
				<?php endif; ?>

				<?php if (get_theme_mod( 'seos_social_github' )) : ?>
					<a target="<?php if(esc_attr(get_theme_mod( 'seos_social_social_link_type' ))){echo esc_attr(get_theme_mod( 'seos_social_social_link_type' )); } else {echo "_self"; } ?>" href="<?php echo esc_url(get_theme_mod( 'seos_social_github' )); ?>"><i class="fa fa-github-alt" aria-hidden="true"></i></a>
				<?php endif; ?>	
				
			</div>
		
<?php } 

add_action( 'customize_register', 'seos_social__social' );

function seos_social__social( $wp_customize ) {

		
 		$wp_customize->add_section( 'seos_social_social_section' , array(
			'title'       => __( 'Social Media', 'seos-social' ),
			'description' => __( 'Social media buttons', 'seos-social' ),
			'priority'    => 2,	
			//'description' => __( 'Social media buttons', 'seos-social' ),
		) ); 

 		$wp_customize->add_setting( 'seos_social_active_social', array (
			'sanitize_callback' => 'seos_social_sanitize_checkbox',
		) );
				
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_active_social', array(
			'label'    => __( 'Activate Social Icons in Header', 'seos-social' ),
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_active_social',
			'type' => 'checkbox'
		) ) );
		

		$wp_customize->add_setting( 'seos_social_facebook', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_facebook', array(
			'label'    => __( 'Enter Facebook url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_facebook',
		) ) );	
		
		
		$wp_customize->add_setting( 'seos_social_twitter', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_twitter', array(
			'label'    => __( 'Enter Twitter url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_twitter',
		) ) );	
			
		
		$wp_customize->add_setting( 'seos_social_linkedin', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_linkedin', array(
			'label'    => __( 'Enter Linkedin url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_linkedin',
		) ) );	
			
		$wp_customize->add_setting( 'seos_social_rss', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_rss', array(
			'label'    => __( 'Enter RSS url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_rss',
		) ) );	
	
					
		$wp_customize->add_setting( 'seos_social_pinterest', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_pinterest', array(
			'label'    => __( 'Enter Pinterest url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_pinterest',
		) ) );	
						
		$wp_customize->add_setting( 'seos_social_youtube', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_youtube', array(
			'label'    => __( 'Enter Youtube url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_youtube',
		) ) );	
	
								
		$wp_customize->add_setting( 'seos_social_vimeo', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_vimeo', array(
			'label'    => __( 'Enter Vimeo url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_vimeo',
		) ) );	
									
		$wp_customize->add_setting( 'seos_social_instagram', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_instagram', array(
			'label'    => __( 'Enter Instagram url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_instagram',
		) ) );	
										
		$wp_customize->add_setting( 'seos_social_stumbleupon', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_stumbleupon', array(
			'label'    => __( 'Enter Stumbleupon url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_stumbleupon',
		) ) );	
	
												
		$wp_customize->add_setting( 'seos_social_flickr', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_flickr', array(
			'label'    => __( 'Enter Flickr url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_flickr',
		) ) );	
	
			
												
		$wp_customize->add_setting( 'seos_social_dribbble', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_dribbble', array(
			'label'    => __( 'Enter Dribbble url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_dribbble',
		) ) );	
													
		$wp_customize->add_setting( 'seos_social_digg', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_digg', array(
			'label'    => __( 'Enter Digg url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_digg',
		) ) );	
	
															
		$wp_customize->add_setting( 'seos_social_skype', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_skype', array(
			'label'    => __( 'Enter Skype url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_skype',
		) ) );	
	
																	
		$wp_customize->add_setting( 'seos_social_deviantart', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_deviantart', array(
			'label'    => __( 'Enter Deviantart url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_deviantart',
		) ) );	
																		
		$wp_customize->add_setting( 'seos_social_yahoo', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_yahoo', array(
			'label'    => __( 'Enter Yahoo url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_yahoo',
		) ) );	
																			
		$wp_customize->add_setting( 'seos_social_reddit_alien', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_reddit_alien', array(
			'label'    => __( 'Enter Reddit Alien url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_reddit_alien',
		) ) );	
																				
		$wp_customize->add_setting( 'seos_social_paypal', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_paypal', array(
			'label'    => __( 'Enter Paypal url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_paypal',
		) ) );	
																					
		$wp_customize->add_setting( 'seos_social_dropbox', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_dropbox', array(
			'label'    => __( 'Enter Dropbox url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_dropbox',
		) ) );	
																						
		$wp_customize->add_setting( 'seos_social_soundcloud', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_soundcloud', array(
			'label'    => __( 'Enter Soundcloud url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_soundcloud',
		) ) );	
																							
		$wp_customize->add_setting( 'seos_social_vk', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_vk', array(
			'label'    => __( 'Enter VK url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_vk',
		) ) );	
																								
		$wp_customize->add_setting( 'seos_social_envelope', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_envelope', array(
			'label'    => __( 'Enter Envelope url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_envelope',
		) ) );	
																									
		$wp_customize->add_setting( 'seos_social_address_book', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_address_book', array(
			'label'    => __( 'Enter Address Book url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_address_book',
		) ) );	
																										
		$wp_customize->add_setting( 'seos_social_apple', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_apple', array(
			'label'    => __( 'Enter Apple url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_apple',
		) ) );	
	
																												
		$wp_customize->add_setting( 'seos_social_amazon', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_amazon', array(
			'label'    => __( 'Enter Amazon url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_amazon',
		) ) );	
		
																												
		$wp_customize->add_setting( 'seos_social_slack', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_slack', array(
			'label'    => __( 'Enter Slack url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_slack',
		) ) );	
																													
		$wp_customize->add_setting( 'seos_social_slideshare', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_slideshare', array(
			'label'    => __( 'Enter Slideshare url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_slideshare',
		) ) );	
																														
		$wp_customize->add_setting( 'seos_social_address_wikipedia', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_address_wikipedia', array(
			'label'    => __( 'Enter Wikipedia url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_address_wikipedia',
		) ) );	
																															
		$wp_customize->add_setting( 'seos_social_wordpress', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_wordpress', array(
			'label'    => __( 'Enter WordPress url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_wordpress',
		) ) );	
	
																																	
		$wp_customize->add_setting( 'seos_social_odnoklassniki', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_odnoklassniki', array(
			'label'    => __( 'Enter Odnoklassniki url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_odnoklassniki',
		) ) );	
		
																																	
		$wp_customize->add_setting( 'seos_social_tumblr', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_tumblr', array(
			'label'    => __( 'Enter Tumblr url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_tumblr',
		) ) );	
			
																																	
		$wp_customize->add_setting( 'seos_social_github', array (
			'sanitize_callback' => 'esc_url_raw',
		) );
		
		$wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'seos_social_github', array(
			'label'    => __( 'Enter GitHub url', 'seos-social' ),		
			'section'  => 'seos_social_social_section',
			'settings' => 'seos_social_github',
		) ) );	
	
		
		
}

/********************************************
* Social styles
*********************************************/ 	

function seos_social_social_method() {

        $social_media_color_mod = esc_attr(get_theme_mod( 'social_media_color' ));
        $social_media_hover_color_mod = esc_attr(get_theme_mod( 'social_media_hover_color' ));

		if($social_media_color_mod) { $social_media_color = ".social .fa-icons i, .social-top .fa {color: {$social_media_color_mod} !important;}";} else {$social_media_color ="";}
		if($social_media_hover_color_mod) { $social_media_hover_color = ".social .fa-icons i:hover, .social-top a:hover .fa {color: {$social_media_hover_color_mod} !important;}";} else {$social_media_hover_color ="";}

        wp_add_inline_style( 'seos-social-style-css', 
		$social_media_color.$social_media_hover_color);
}
add_action( 'wp_enqueue_scripts', 'seos_social_social_method' );				
		