# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->

  #coffee for about page
  $('#about-boxes a').mouseenter ->
    $(this).parent().parent().css('backgroundColor', '#2987D3')

  $('#about-boxes a').mouseleave ->
    $(this).parent().parent().css('backgroundColor', '#49A7F3')
    #$(this).animate({backgroundPosition,'300px -10px'})

  $('#about-boxes a').live 'click', ->
    $('#about-boxes').children().css('border', '0px')
    $(this).parent().parent().css('border', '2px solid green')
    id = $(this).closest('div').attr('id')
    $('.about-sub').children().hide()
    $('#'+id+'-sub').show()
    $('#'+id+'-sub .tab1 a').trigger 'click'

  $('.tabs a').live 'click', ->
    tab_type = $(this).parent().attr('class')
    $('.tab-content').children().hide()
    $('.tab-content .'+tab_type).show()
    $('.tabs a').css('font-size', '15px')
    $(this).css('font-size', '22px')

  $('#about-us-home').live "mouseenter", ->
    $(this).css({backgroundColor:"#C1CB47"})
    $(this).children().css({color:"white"})


  $('#about-us-home').live "mouseleave", ->
    $(this).css({backgroundColor:"#FFFFFF"})
    $(this).children().last().css({color:"black"})
    $(this).children().first().css({color:"#CE5848"})
    $(this).children().css({color:"black"})

  $('#events-home').live "mouseenter", ->
    $(this).css({backgroundColor:"mistyRose"})
    $(this).children().last().css({color:"sienna"})
    $(this).children().first().css({color:"crimson"})


  $('#events-home').live "mouseleave", ->
    $(this).children().last().css({color:"black"})
    $(this).children().first().css({color:"#CE5848"})
    $(this).css({backgroundColor:"#FFFFFF"})

  $('#support-home').live "mouseenter", ->
    $(this).css({backgroundColor:"gainsboro"})
    $(this).children().last().css({color:"tomato"})
    $(this).children().first().css({color:"crimson"})


  $('#support-home').live "mouseleave", ->
    $(this).css({backgroundColor:"#FFFFFF"})
    $(this).children().last().css({color:"black"})
    $(this).children().first().css({color:"#CE5848"})
  $('.footer-links').live "mouseenter", ->
    $(this).css({color:"black"})
  $('.footer-links').live "mouseleave", ->
    $(this).css({color:"#A0A0A0"})

  $('#supporter').rotate(-12)