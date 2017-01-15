(function() {
  $(function() {
    $('.slider1').bxSlider({
      minSlides: 3,
      maxSlides: 3,
      moveSlides: 3,
      slideMargin: 30,
      nextSelector: '#slider-next',
      prevSelector: '#slider-prev',
      nextText: '<i class="fa fa-chevron-right fa-3x" aria-hidden="true"></i>',
      prevText: '<i class="fa fa-chevron-left fa-3x" aria-hidden="true"></i>'
    });
    return $('.slider2').bxSlider({
      minSlides: 1,
      maxSlides: 1,
      moveSlides: 1,
      nextSelector: '#slider-next-2',
      prevSelector: '#slider-prev-2',
      nextText: '<i class="fa fa-chevron-right fa-3x" aria-hidden="true"></i>',
      prevText: '<i class="fa fa-chevron-left fa-3x" aria-hidden="true"></i>'
    });
  });

}).call(this);
