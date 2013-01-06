window.Randomselektor =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Randomselektor.Routers.Entries
    Backbone.history.start()

$(document).ready ->
  Randomselektor.initialize()
