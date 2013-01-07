class Randomselektor.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  events:
    'submit #new_entry': 'createEntry'
    'click #select': 'selectEntry'

  selectEntry: (event) ->
    event.preventDefault()
    @collection.selectEntry()

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendEntry, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendEntry)
    this

  appendEntry: (entry) ->
    view = new Randomselektor.Views.Entry(model: entry)
    $('#entries').append(view.render().el)
    # $('#new_entry')[0].reset()

  createEntry: ->
    event.preventDefault()
    attributes = name: $('#new_entry_name').val()
    @collection.create attributes,
      wait:true
      success: -> $('#new_entry')[0].reset()
      error: @handleError

  handleError: (entry, response) ->
    if response.status == 422
      errors = $.parseJSON(response.responseText).errors
      for attributes, messages of errors
        alert "#{attributes} #{message}" for message in messages

