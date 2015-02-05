$ ->
  orderImages()
  $(window).on 'scroll', scrollActions
  $('.navbar a').on 'click', scrollToSection

orderImages = ->
  setInterval ->
    $('.image-container:last').prependTo('#intro-container')
  , 15000

scrollActions = (event) ->

  # Darkening the navbar
  if $(window).scrollTop() >= 200
    $nav = $ 'nav:first'
    $nav.addClass 'scrolled'
  else
    $nav = $ 'nav:first'
    $nav.removeClass 'scrolled'

  # Showing AMP info
  if $(window).scrollTop() >= 600
    $('.icons:first p').addClass 'shown'

scrollToSection = (event) ->
  event.preventDefault()
  target = $ this.hash if this.hash

  $('html, body').animate
    scrollTop: target.offset().top
  , 500
