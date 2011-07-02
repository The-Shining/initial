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
    $(this).css({backgroundColor:"slateGray"})
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

  # coffee for slides
  $('.slides').hide()
  $('#holder').children().first().fadeIn("slow")
  caption = $('#holder').children().first().attr('caption_text')
  link = $('#holder').children().first().attr('link')
  $('#caption').html('<a href='+link+'>'+caption+'</a>')
  setInterval(
    ->
      current = $('#holder [style*="display: block"]')
      current.hide()
      if(current.next().length < 1)
        $('#holder').children().first().fadeIn("slow")
        caption = $('#holder').children().first().attr('caption_text')
        link = $('#holder').children().first().attr('link')
        $('#caption').html('<a href='+link+'>'+caption+'</a>')
      else
        caption = current.next().attr('caption_text')
        link = current.next().attr('link')
        current.next().fadeIn("slow")
        $('#caption').html('<a href='+link+'>'+caption+'</a>')
  ,3000)

  $('.thumb').live "mouseenter", ->
    $(this).parent().css('z-index','100px')
    $(this).parent().css('box-shadow','5px 5px 5px black')
    $(this).css('opacity','0.8')

  $('.thumb').live "mouseleave", ->
    $(this).parent().css('z-index','0px')
    $(this).parent().css('box-shadow','0px')
    $(this).css('opacity','1')

  $('.thumb').live "click", ->
    $(this).css('opacity','1')
    $('#gallery .large').removeClass('large').addClass('thumb')
    $('.thumb').rotate(0)
    $(this).toggleClass('thumb large')
    $(this).rotate(-10)

  $('.large').live "click", ->
    $(this).rotate(0)
    $(this).toggleClass('large thumb')

  $('.submenu').live "mouseenter", ->
    $(this).css({'border-bottom':'4px solid'})
    $(this).children().css({'opacity':'1.0'})
  $('.submenu').live "mouseleave", ->
    $(this).css({'border-bottom':'0px'})
    $(this).children().css({'opacity':'0.7'})

  $('#content').hide()

  $('#about-hemo').live "click", ->
    $('#content').show("fold",1000)
	
  #coffee for feedback, fancybox
  $('#fancybox_link').fancybox({    
    'autoDimensions' : true,
    'transitionIn' : 'none',
    'transitionOut' : 'none'
  })
