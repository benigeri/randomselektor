class Randomselektor.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'

  initialize: ->
    @collection = new Randomselektor.Collections.Entries()
    @collection.fetch()

  index: ->
    view = new Randomselektor.Views.EntriesIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Entry #{id}"