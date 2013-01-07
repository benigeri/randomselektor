class Randomselektor.Collections.Entries extends Backbone.Collection

  model: Randomselektor.Models.Entry

  url: 'api/entries'

  selectEntry: ->
    selected = @shuffle()[0]
    console.log(selected)
    if selected
      selected.set(selected: true)
      selected.save()
      selected.trigger('selected')

