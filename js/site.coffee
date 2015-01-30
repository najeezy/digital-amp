$ ->
  orderImages()
  $(window).on 'scroll', ->
    console.log 'I got in here'
    if $(window).scrollTop() > 200
      $nav = $ 'nav:first'
      $nav.addClass 'scrolled'
    else
      $nav = $ 'nav:first'
      $nav.removeClass 'scrolled'

orderImages = ->
  setInterval ->
    $('.image-container:last').prependTo('#main-images-container')
  , 13000
