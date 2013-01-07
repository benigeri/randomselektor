class Randomselektor.Views.Entry extends Backbone.View
  template: JST['entries/entry']
  tagName: 'li'

  initialize: ->
    @model.on('change', @render, this)
    @model.on('selected', @highlightSelected, this)

  highlightSelected: ->
    $('.selected').removeClass('selected')
    console.log(@)
    $(@el).addClass('selected')

  render: ->
    $(@el).html(@template(entry: @model))
    this