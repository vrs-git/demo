// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.min
//= require jquery_ujs
//= require turbolinks
//= require back-to-top
//= require bootstrap.min
//= require bootstrap.touchspin
//= require bs-carousel
//= require jquery.fancybox
//= require jquery.slimscroll.min
//= require jquery.zoom.min
//= require jquery-migrate.min
//= require owl.carousel.min
//= require respond.min
//= require_tree .


jQuery(document).ready(function() {
    Layout.init();
    Layout.initOWL();
    Layout.initImageZoom();
    Layout.initTouchspin();
    Layout.initTwitter();
});