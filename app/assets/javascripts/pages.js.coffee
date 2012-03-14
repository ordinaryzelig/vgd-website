# =====================================================
# anyting slider
# https://github.com/ProLoser/AnythingSlider/

$ ->

  slider = $('#slider')
  descriptionFadeDuration = 'slow'

  # Initialize slider.
  slider.anythingSlider
    autoPlay: true
    hashTags: false # Don't change URL.
    buildStartStop: false

  # When slider slides, show description for that image.
  # When slide begins, hide visible descriptions.
  # Show description for target page.
  slider.bind 'slide_begin', (event, _slider) ->
    $('.portfolio_description:visible').fadeOut descriptionFadeDuration, ->
      targetPage = $("#portfolio_description_#{_slider.targetPage}")
      targetPage.fadeIn(descriptionFadeDuration)

# =====================================================
# Smooth scrolling.
$ ->
  $('a').smoothScroll()
