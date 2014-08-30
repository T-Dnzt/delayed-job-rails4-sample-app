$(document).on 'ready page:load', ->

  poll = (div, callback) ->
    setTimeout ->
      console.log 'Calling...'
      $.get(div.data('status')).done (document) ->
        console.log 'Formatted ?', document.imported
        if document.imported
          # Yay, it's imported, we can update the content
          callback()
        else
          # Not finished yet, let's make another request...
          poll(div, callback)
    , 2000

  $('[data-status]').each ->
    div = $(this)

    # Initiate the polling
    poll div, ->
      div.children('p').html('Document formatted successfully.')
      div.children('a').show()

