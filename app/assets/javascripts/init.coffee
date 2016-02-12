#Assigns empty object to App if App is undefined
window.App ||= {}

App.Role =
  init: ->
    role = $('[data-behavior~=select-role]').val()
    if role is 'protege'
      $('.insights-form').hide()
    else
      $('.insights-form').show()

App.init = ->
  App.Role.init()
  # $('.results-links').hide()
  # $('footer .social').hide()
  # $('.profiles.show .results-links').show()
  # $('.pages.about .results-links').show()
  # $('.pages.about footer .social').show()
  # $('.profiles.mentors .results-links.proteges-link').show()
  # $('.profiles.proteges .results-links.mentors-link').show()
  # $('.pages.index footer .social').show()
  #
  # $('.pages.about footer a').addClass('screen')
  # $('.pages.index footer a').removeClass('screen')

# with turbolinks on (document).ready does not fire from page-to-page
# so listen for page:change event instead
$(document).on "page:change", ->
  App.init()

# adjusts visibility of insights field in profiles form depending on selected role
$(document).on "change", "[data-behavior~=select-role]", ->
  App.Role.init()
