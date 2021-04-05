/* global perfect_ecommerce_storeScreenReaderText */
/**
 * Theme functions file.
 *
 * Contains handlers for navigation and widget area.
 */

jQuery(function($){
	"use strict";
	jQuery('.main-menu-navigation > ul').superfish({
		delay:       500,                            
		animation:   {opacity:'show',height:'show'},  
		speed:       'fast'                        
	});
});

function perfect_ecommerce_store_open() {
	window.perfect_ecommerce_store_mobileMenu = true;
	jQuery(".sidenav").addClass('show');
}
function perfect_ecommerce_store_close() {
	window.perfect_ecommerce_store_mobileMenu = false;
	jQuery(".sidenav").removeClass('show');
}

window.perfect_ecommerce_store_currentfocus=null;
perfect_ecommerce_store_checkfocusdElement();
var perfect_ecommerce_store_body = document.querySelector('body');
perfect_ecommerce_store_body.addEventListener('keyup', perfect_ecommerce_store_check_tab_press);
var perfect_ecommerce_store_gotoHome = false;
var perfect_ecommerce_store_gotoClose = false;
window.perfect_ecommerce_store_mobileMenu=false;
function perfect_ecommerce_store_checkfocusdElement(){
 	if(window.perfect_ecommerce_store_currentfocus=document.activeElement.className){
	 	window.perfect_ecommerce_store_currentfocus=document.activeElement.className;
 	}
}
function perfect_ecommerce_store_check_tab_press(e) {
	"use strict";
	// pick passed event or global event object if passed one is empty
	e = e || event;
	var activeElement;

	if(window.innerWidth < 999){
		if (e.keyCode == 9) {
			if(window.perfect_ecommerce_store_mobileMenu){
				if (!e.shiftKey) {
					if(perfect_ecommerce_store_gotoHome) {
						jQuery( "#resp-menu .main-menu-navigation ul:first li:first a:first-child" ).focus();
					}
				}
				if (jQuery("a.closebtn.responsive-menu").is(":focus")) {
					perfect_ecommerce_store_gotoHome = true;
				} else {
					perfect_ecommerce_store_gotoHome = false;
				}
			}else{
				if(window.perfect_ecommerce_store_currentfocus=="mobiletoggle"){
					jQuery( "" ).focus();
				}
			}
		}
	}
	if (e.shiftKey && e.keyCode == 9) {
		if(window.innerWidth < 999){
			if(window.perfect_ecommerce_store_currentfocus=="header-search"){
				jQuery(".mobiletoggle").focus();
			}else{
				if(window.perfect_ecommerce_store_mobileMenu){
					if(perfect_ecommerce_store_gotoClose){
						jQuery("a.closebtn.responsive-menu").focus();
					}
					if (jQuery( "#resp-menu .main-menu-navigation ul:first li:first a:first-child" ).is(":focus")) {
						perfect_ecommerce_store_gotoClose = true;
					} else {
						perfect_ecommerce_store_gotoClose = false;
					}
				
				}else{
					if(window.perfect_ecommerce_store_mobileMenu){
					}
				}
			}
		}
	}
 	perfect_ecommerce_store_checkfocusdElement();
}

(function( $ ) {
	$(document).ready(function(){
		$(".menu-sec .product-cat").hide();
	    $("button.product-btn").click(function(){
	        $(".menu-sec .product-cat").toggle();
	    });
	});	
})( jQuery );