( function( api ) {

	// Extends our custom "perfect-ecommerce-store" section.
	api.sectionConstructor['perfect-ecommerce-store'] = api.Section.extend( {

		// No events for this type of section.
		attachEvents: function () {},

		// Always make the section active.
		isContextuallyActive: function () {
			return true;
		}
	} );

} )( wp.customize );