# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$("#send_link_form").submit ->
  if link_form_valid()
    true
  else
    $("#content_form_errors")
    .html("The below link is invalid!")
    .show()
    false

link_form_valid = ->
  link_val = $("#content_link").val()
  test_http_url link_val

test_http_url = (uri) ->
  urlregex = new RegExp("^(http://|https://)")
  urlregex.test uri

$("#send_link_form").bind "ajax:complete", (e, data, status, xhr) ->
  $("#content_form_errors")
    .removeClass("alert-danger")
    .addClass("alert-success")
    .html data.responseText
    .show()
  $("#send_link_form")[0].reset()
  return
