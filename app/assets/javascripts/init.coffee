window.App ||= {}

App.init = ->
  # initializes select boxes
  $('select').material_select()

$(document).on "page:change", ->
  App.init()