$ ->
  orderImages()
  $(window).on 'scroll', darkenNavbar
  $('.navbar a').on 'click', scrollToSection

  $('.strategy li').on 'click', 'h3', (e) ->
    $icon = $(e.delegateTarget).find 'i'
    if $icon.hasClass 'fa-angle-double-right'
      $icon.switchClass('fa-angle-double-right', 'fa-angle-double-down', 100)
    else
      $icon.switchClass('fa-angle-double-down', 'fa-angle-double-right', 100)

    $text = $(e.delegateTarget).find('text')
    $text.toggleClass('hide')

orderImages = ->
  setInterval ->
    $('.image-container:last').prependTo('#intro-container')
  , 15000

darkenNavbar = (event) ->
  if $(window).scrollTop() > 200
    $nav = $ 'nav:first'
    $nav.addClass 'scrolled'
  else
    $nav = $ 'nav:first'
    $nav.removeClass 'scrolled'

scrollToSection = (event) ->
  target = $ this.hash if this.hash

  
