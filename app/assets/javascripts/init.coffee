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

# with turbolinks on (document).ready does not fire from page-to-page
# so listen for page:change event instead
$(document).on "page:change", ->
  App.init()

# adjusts visibility of insights field in profiles form depending on selected role
$(document).on "change", "[data-behavior~=select-role]", ->
  App.Role.init()
