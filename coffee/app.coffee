$ ->
#  nav = document.getElementById('custom-nav')
#  navHeight = nav.offsetHeight
#  console.log navHeight
#  $( ".navbar-default" ).addClass( "navbar-fixed-top" )
#  document.body.style.paddingTop = navHeight + 'px'
  $('.slider1').bxSlider({
    minSlides: 3,
    maxSlides: 3,
    moveSlides:3,
    slideMargin: 30
    nextSelector: '#slider-next',
    prevSelector: '#slider-prev',
    nextText: '<i class="fa fa-chevron-right fa-3x" aria-hidden="true"></i>',
    prevText: '<i class="fa fa-chevron-left fa-3x" aria-hidden="true"></i>'
  });

  $('.slider2').bxSlider({
    minSlides: 1,
    maxSlides: 1,
    moveSlides:1,
#    slideMargin: 30
    nextSelector: '#slider-next-2',
    prevSelector: '#slider-prev-2',
    nextText: '<i class="fa fa-chevron-right fa-3x" aria-hidden="true"></i>',
    prevText: '<i class="fa fa-chevron-left fa-3x" aria-hidden="true"></i>'
  });
  $('#timeline-container-basic').timelineMe({
    items: [
      {
        type: 'smallItem',
        label: '2006',
        showMore: 'show more',
        showLess: 'show less',
        shortContent:'The Beginning'
        fullContent: '<div class="">
      <i class="col-md-2 fa fa-flag fa-2x" style="color: #c59a6d"></i>
      <div class="col-md-10">
      <h3 style="color: #c59a6d">The Beginning</h3>
<p>Quisque ut convallis diam, id pulvinar leo. Integer consequat vulputate orci sit amet consequat</p>
</div>
</div>',

      },
      {
        type: 'smallItem',
        label: '2007',
        showMore: 'show more',
        showLess: 'show less',
        shortContent:'The First Award'
        fullContent: '<div class="">
      <i class="col-md-2 fa fa-trophy fa-2x" style="color: #c59a6d"></i><div class="col-md-10">
      <h3 style="color: #c59a6d">The First Award</h3>
<p>Quisque ut convallis diam, id pulvinar leo. Integer consequat vulputate orci sit amet consequat</p>
</div>

</div>',

      },
      {
        type: 'smallItem',
        label: '2008',
        showMore: 'show more',
        showLess: 'show less',
        shortContent:'We Have A new Office'
        fullContent: '<div class="">
      <i class="col-md-2 fa fa-building fa-2x" style="color: #c59a6d"></i>
      <div class="col-md-10">
      <h3 style="color: #c59a6d">We Have A new Office</h3>
<p>Quisque ut convallis diam, id pulvinar leo. Integer consequat vulputate orci sit amet consequat</p>
</div>
</div>',

      }
    ]
  });
