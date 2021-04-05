<?php
/**
 * perfect-ecommerce-store: Customizer
 *
 * @subpackage perfect-ecommerce-store
 * @since 1.0
 */

function perfect_ecommerce_store_customize_register( $wp_customize ) {

	$wp_customize->add_setting('perfect_ecommerce_store_show_site_title',array(
       'default' => true,
       'sanitize_callback'	=> 'perfect_ecommerce_store_sanitize_checkbox'
    ));
    $wp_customize->add_control('perfect_ecommerce_store_show_site_title',array(
       'type' => 'checkbox',
       'label' => __('Show / Hide Site Title','perfect-ecommerce-store'),
       'section' => 'title_tagline'
    ));

    $wp_customize->add_setting('perfect_ecommerce_store_show_tagline',array(
       'default' => true,
       'sanitize_callback' => 'perfect_ecommerce_store_sanitize_checkbox'
    ));
    $wp_customize->add_control('perfect_ecommerce_store_show_tagline',array(
       'type' => 'checkbox',
       'label' => __('Show / Hide Site Tagline','perfect-ecommerce-store'),
       'section' => 'title_tagline'
    ));

	$wp_customize->add_panel( 'perfect_ecommerce_store_panel_id', array(
	    'priority' => 10,
	    'capability' => 'edit_theme_options',
	    'theme_supports' => '',
	    'title' => __( 'Theme Settings', 'perfect-ecommerce-store' ),
	    'description' => __( 'Description of what this panel does.', 'perfect-ecommerce-store' ),
	) );

	$wp_customize->add_section( 'perfect_ecommerce_store_theme_options_section', array(
    	'title'      => __( 'General Settings', 'perfect-ecommerce-store' ),
		'priority'   => 30,
		'panel' => 'perfect_ecommerce_store_panel_id'
	) );

	// Add Settings and Controls for Layout
	$wp_customize->add_setting('perfect_ecommerce_store_theme_options',array(
        'default' => __('Right Sidebar','perfect-ecommerce-store'),
        'sanitize_callback' => 'perfect_ecommerce_store_sanitize_choices'	        
	));
	$wp_customize->add_control('perfect_ecommerce_store_theme_options', array(
        'type' => 'radio',
        'label' => __('Do you want this section','perfect-ecommerce-store'),
        'section' => 'perfect_ecommerce_store_theme_options_section',
        'choices' => array(
            'Left Sidebar' => __('Left Sidebar','perfect-ecommerce-store'),
            'Right Sidebar' => __('Right Sidebar','perfect-ecommerce-store'),
            'One Column' => __('One Column','perfect-ecommerce-store'),
            'Three Columns' => __('Three Columns','perfect-ecommerce-store'),
            'Four Columns' => __('Four Columns','perfect-ecommerce-store'),
            'Grid Layout' => __('Grid Layout','perfect-ecommerce-store')
        ),
	));

	$wp_customize->add_section( 'perfect_ecommerce_store_header' , array(
    	'title'      => __( 'Header Settings', 'perfect-ecommerce-store' ),
		'priority'   => null,
		'panel' => 'perfect_ecommerce_store_panel_id'
	) );

	$wp_customize->add_setting( 'perfect_ecommerce_store_sale_text', array(
		'default'           => '',
		'sanitize_callback' => 'sanitize_text_field'
	));
	$wp_customize->add_control( 'perfect_ecommerce_store_sale_text', array(
		'label' => __('Add sale text', 'perfect-ecommerce-store' ),
		'section'  => 'perfect_ecommerce_store_header',
		'type'     => 'text'
	));

	$wp_customize->add_setting('perfect_ecommerce_store_sale_image',array(
		'default'	=> '',
		'sanitize_callback'	=> 'esc_url_raw',
	));
	$wp_customize->add_control( new WP_Customize_Image_Control($wp_customize,'perfect_ecommerce_store_sale_image',array(
        'label' => __('Sale Image','perfect-ecommerce-store'),
        'description'=> __('Image size (445px x 75px)','perfect-ecommerce-store'),
        'section' => 'perfect_ecommerce_store_header',
        'settings' => 'perfect_ecommerce_store_sale_image'
	)));

	//home page slider
	$wp_customize->add_section( 'perfect_ecommerce_store_slider_section' , array(
    	'title'      => __( 'Slider Settings', 'perfect-ecommerce-store' ),
		'priority'   => null,
		'panel' => 'perfect_ecommerce_store_panel_id'
	) );

	$wp_customize->add_setting('perfect_ecommerce_store_slider_hide_show',array(
       'default' => 'true',
       'sanitize_callback'	=> 'perfect_ecommerce_store_sanitize_checkbox'
	));
	$wp_customize->add_control('perfect_ecommerce_store_slider_hide_show',array(
	   'type' => 'checkbox',
	   'label' => __('Show / Hide slider','perfect-ecommerce-store'),
	   'section' => 'perfect_ecommerce_store_slider_section',
	));

	for ( $count = 1; $count <= 4; $count++ ) {
		$wp_customize->add_setting( 'perfect_ecommerce_store_slider' . $count, array(
			'default'           => '',
			'sanitize_callback' => 'perfect_ecommerce_store_sanitize_dropdown_pages'
		) );
		$wp_customize->add_control( 'perfect_ecommerce_store_slider' . $count, array(
			'label'    => __( 'Select Slide Image Page', 'perfect-ecommerce-store' ),
        	'description'=> __('Image size (825px x 480px)','perfect-ecommerce-store'),
			'section'  => 'perfect_ecommerce_store_slider_section',
			'type'     => 'dropdown-pages'
		) );
	}

	//Trending Product
	$wp_customize->add_section('perfect_ecommerce_store_products',array(
		'title'	=> __('Featured Products','perfect-ecommerce-store'),
		'description'=> __('This section will appear below the slider.','perfect-ecommerce-store'),
		'panel' => 'perfect_ecommerce_store_panel_id',
	));	

	$wp_customize->add_setting( 'perfect_ecommerce_store_block1', array(
		'default'           => '',
		'sanitize_callback' => 'perfect_ecommerce_store_sanitize_dropdown_pages'
	));
	$wp_customize->add_control( 'perfect_ecommerce_store_block1', array(
		'label'    => __( 'Select Page for block 1', 'perfect-ecommerce-store' ),
		'section'  => 'perfect_ecommerce_store_products',
		'type'     => 'dropdown-pages'
	));

	$wp_customize->add_setting( 'perfect_ecommerce_store_block2', array(
		'default'           => '',
		'sanitize_callback' => 'perfect_ecommerce_store_sanitize_dropdown_pages'
	));
	$wp_customize->add_control( 'perfect_ecommerce_store_block2', array(
		'label'    => __( 'Select Page for block 2', 'perfect-ecommerce-store' ),
		'section'  => 'perfect_ecommerce_store_products',
		'type'     => 'dropdown-pages'
	));
	
	$wp_customize->add_setting('perfect_ecommerce_store_maintitle',array(
		'default'=> '',
		'sanitize_callback'	=> 'sanitize_text_field'
	));
	$wp_customize->add_control('perfect_ecommerce_store_maintitle',array(
		'label'	=> __('Featured Products Title','perfect-ecommerce-store'),
		'section'=> 'perfect_ecommerce_store_products',
		'setting'=> 'perfect_ecommerce_store_maintitle',
		'type'=> 'text'
	));	

	$wp_customize->add_setting( 'perfect_ecommerce_store_page', array(
		'default'           => '',
		'sanitize_callback' => 'perfect_ecommerce_store_sanitize_dropdown_pages'
	));
	$wp_customize->add_control( 'perfect_ecommerce_store_page', array(
		'label'    => __( 'Select Product Page', 'perfect-ecommerce-store' ),
		'section'  => 'perfect_ecommerce_store_products',
		'type'     => 'dropdown-pages'
	));

	//Footer
    $wp_customize->add_section( 'perfect_ecommerce_store_footer', array(
    	'title' => __( 'Footer Text', 'perfect-ecommerce-store' ),
		'priority'   => null,
		'panel' => 'perfect_ecommerce_store_panel_id'
	) );

    $wp_customize->add_setting('perfect_ecommerce_store_footer_copy',array(
		'default'	=> '',
		'sanitize_callback'	=> 'sanitize_text_field'
	));
	$wp_customize->add_control('perfect_ecommerce_store_footer_copy',array(
		'label'	=> __('Footer Text','perfect-ecommerce-store'),
		'section'	=> 'perfect_ecommerce_store_footer',
		'setting'	=> 'perfect_ecommerce_store_footer_copy',
		'type'		=> 'text'
	));

	$wp_customize->get_setting( 'blogname' )->transport          = 'postMessage';
	$wp_customize->get_setting( 'blogdescription' )->transport   = 'postMessage';
	$wp_customize->get_setting( 'header_textcolor' )->transport  = 'postMessage';

	$wp_customize->selective_refresh->add_partial( 'blogname', array(
		'selector' => '.site-title a',
		'render_callback' => 'perfect_ecommerce_store_customize_partial_blogname',
	) );
	$wp_customize->selective_refresh->add_partial( 'blogdescription', array(
		'selector' => '.site-description',
		'render_callback' => 'perfect_ecommerce_store_customize_partial_blogdescription',
	) );

	//front page
	$num_sections = apply_filters( 'perfect_ecommerce_store_front_page_sections', 4 );

	// Create a setting and control for each of the sections available in the theme.
	for ( $i = 1; $i < ( 1 + $num_sections ); $i++ ) {
		$wp_customize->add_setting( 'panel_' . $i, array(
			'default'           => false,
			'sanitize_callback' => 'absint',
			'transport'         => 'postMessage',
		) );

		$wp_customize->add_control( 'panel_' . $i, array(
			/* translators: %d is the front page section number */
			'label'          => sprintf( __( 'Front Page Section %d Content', 'perfect-ecommerce-store' ), $i ),
			'description'    => ( 1 !== $i ? '' : __( 'Select pages to feature in each area from the dropdowns. Add an image to a section by setting a featured image in the page editor. Empty sections will not be displayed.', 'perfect-ecommerce-store' ) ),
			'section'        => 'theme_options',
			'type'           => 'dropdown-pages',
			'allow_addition' => true,
			'active_callback' => 'perfect_ecommerce_store_is_static_front_page',
		) );

		$wp_customize->selective_refresh->add_partial( 'panel_' . $i, array(
			'selector'            => '#panel' . $i,
			'render_callback'     => 'perfect_ecommerce_store_front_page_section',
			'container_inclusive' => true,
		) );
	}
}
add_action( 'customize_register', 'perfect_ecommerce_store_customize_register' );

function perfect_ecommerce_store_sanitize_colorscheme( $input ) {
	$valid = array( 'light', 'dark', 'custom' );
	if ( in_array( $input, $valid, true ) ) {
		return $input;
	}
	return 'light';
}

function perfect_ecommerce_store_customize_partial_blogname() {
	bloginfo( 'name' );
}

function perfect_ecommerce_store_customize_partial_blogdescription() {
	bloginfo( 'description' );
}

function perfect_ecommerce_store_is_static_front_page() {
	return ( is_front_page() && ! is_home() );
}

function perfect_ecommerce_store_is_view_with_layout_option() {
	// This option is available on all pages. It's also available on archives when there isn't a sidebar.
	return ( is_page() || ( is_archive() && ! is_active_sidebar( 'sidebar-1' ) ) );
}

/**
 * Singleton class for handling the theme's customizer integration.
 *
 * @since  1.0.0
 * @access public
 */
final class Perfect_Ecommerce_Store_Customize {

	/**
	 * Returns the instance.
	 *
	 * @since  1.0.0
	 * @access public
	 * @return object
	 */
	public static function get_instance() {

		static $instance = null;

		if ( is_null( $instance ) ) {
			$instance = new self;
			$instance->setup_actions();
		}

		return $instance;
	}

	/**
	 * Constructor method.
	 *
	 * @since  1.0.0
	 * @access private
	 * @return void
	 */
	private function __construct() {}

	/**
	 * Sets up initial actions.
	 *
	 * @since  1.0.0
	 * @access private
	 * @return void
	 */
	private function setup_actions() {

		// Register panels, sections, settings, controls, and partials.
		add_action( 'customize_register', array( $this, 'sections' ) );

		// Register scripts and styles for the controls.
		add_action( 'customize_controls_enqueue_scripts', array( $this, 'enqueue_control_scripts' ), 0 );
	}

	/**
	 * Sets up the customizer sections.
	 *
	 * @since  1.0.0
	 * @access public
	 * @param  object  $manager
	 * @return void
	 */
	public function sections( $manager ) {

		// Load custom sections.
		load_template( trailingslashit( get_template_directory() ) . '/inc/section-pro.php' );

		// Register custom section types.
		$manager->register_section_type( 'Perfect_Ecommerce_Store_Customize_Section_Pro' );

		// Register sections.
		$manager->add_section(
			new Perfect_Ecommerce_Store_Customize_Section_Pro(
				$manager,
				'example_1',
				array(
					'priority' => 9,
					'title'    => esc_html__( 'Ecommerce Pro', 'perfect-ecommerce-store' ),
					'pro_text' => esc_html__( 'Upgrade Pro', 'perfect-ecommerce-store' ),
					'pro_url'  => esc_url('https://www.luzuk.com/product/premium-ecommerce-wordpress-theme/')
				)
			)
		);
	}

	/**
	 * Loads theme customizer CSS.
	 *
	 * @since  1.0.0
	 * @access public
	 * @return void
	 */
	public function enqueue_control_scripts() {

		wp_enqueue_script( 'perfect-ecommerce-store-customize-controls', trailingslashit( get_template_directory_uri() ) . '/assets/js/customize-controls.js', array( 'customize-controls' ) );

		wp_enqueue_style( 'perfect-ecommerce-store-customize-controls', trailingslashit( get_template_directory_uri() ) . '/assets/css/customize-controls.css' );
	}
}

// Doing this customizer thang!
Perfect_Ecommerce_Store_Customize::get_instance();