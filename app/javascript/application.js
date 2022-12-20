// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
//= require bootstrap-sprockets
//= require jquery
import jquery from "jquery"
window.jQuery = jquery
window.$ = jquery

$('#createAddressButton').on('click', function() {
    alert('Created Address')
})

