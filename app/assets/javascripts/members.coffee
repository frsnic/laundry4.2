# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'ready page:change', ->
  # new/edit member page
  $("#toggleMoreBtn").click ->
    $("#more_btn").toggle();
    if $("#more_btn").css("display") == "none"
      $("#toggleMoreBtn").html("More");
    else
      $("#toggleMoreBtn").html("Hide");
