# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  'use strict'
  $('.main-sections a, .navbar-brand').click (e) ->
    e.preventDefault()
    # Collapse navbar when clicking on any link
    $('.navbar-collapse').collapse 'hide'
    # Add scroll animation when clicking on a link
    $anchor = $(this)
    $('html, body').stop().animate { scrollTop: $($anchor.attr('href')).offset().top }, 1500, 'easeInOutExpo'
    return
  return
