# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

readyPage = ->

  $(".select2").each (i, e) ->
    select = $(e)
    options = {
      initSelection: (element, callback) ->
        data = {id: element.data('current_id'), text: element.val()}
        callback(data)
      createSearchChoice: (term) ->
        return {id: term, text: term }
    }
    if select.hasClass("ajax")
      options.ajax =
        url: select.data("source")
        dataType: "json"
        data: (term, page) ->
          q: term
          page: page
        results: (data, page) ->
          results: data

    select.select2 options
    return

$(document).ready readyPage
$(document).on "page:load", readyPage