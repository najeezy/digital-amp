$ ->
  orderImages()
  $(window).on 'scroll', ->
    if $(window).scrollTop() > 200
      $nav = $ 'nav:first'
      $nav.addClass 'scrolled'
    else
      $nav = $ 'nav:first'
      $nav.removeClass 'scrolled'

orderImages = ->
  setInterval ->
    $('.image-container:last').prependTo('#intro-container')
  , 15000
