# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->

  #coffee for about page
  $('#about-us').mouseenter ->
    $(this).css('backgroundColor', '#2987D3')

  $('#about-us').mouseleave ->
    $(this).css('backgroundColor', '#49A7F3')
    #$(this).animate({backgroundPosition,'300px -10px'})

  $('#our-goals').mouseenter ->
    $(this).css('backgroundColor', '#2987D3')
    #$(this).css('backgroundPosition','153px -10px')

  $('#our-goals').mouseleave ->
    $(this).css('backgroundColor', '#49A7F3')
    #$(this).animate({backgroundPosition,'300px -10px'})

  $('#about-boxes a').live 'click', ->
    id = $(this).closest('div').attr('id')
    $('.about-sub').children().hide()
    $('#'+id+'-sub').show()
    $('#'+id+'-sub .tab1 a').trigger 'click'
	
  $('.tabs a').live 'click', ->
    tab_type = $(this).parent().attr('class')
    $('.tab-content').children().hide()
    $('.tab-content .'+tab_type).show()
	

  $('#about-us-home').live "mouseenter", ->
    $(this).css({backgroundColor:"#C1CB47"})
    $(this).children().css({color:"white"})       
  $('#about-us-home').live "mouseleave", ->
    $(this).css({backgroundColor:"#FFFFFF"})
    $(this).children().css({color:"black"})       

  $('#events-home').live "mouseenter", ->
    $(this).css({backgroundColor:"khaki"})

  $('#events-home').live "mouseleave", ->
    $(this).css({backgroundColor:"#FFFFFF"})


  $('#support-home').live "mouseenter", ->
    $(this).css({backgroundColor:"burlyWood"})
    $(this).children().css({color:"white"})       

  $('#support-home').live "mouseleave", ->
    $(this).css({backgroundColor:"#FFFFFF"}) 
    $(this).children().css({color:"black"})

  $('.footer-links').live "mouseenter", ->
    $(this).css({color:"black"})
  $('.footer-links').live "mouseleave", ->
    $(this).css({color:"#A0A0A0"})
