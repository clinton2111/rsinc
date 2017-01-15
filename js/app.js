(function() {
  $(function() {
    return $('.slider1').bxSlider({
      minSlides: 3,
      maxSlides: 3,
      moveSlides: 3,
      slideMargin: 30,
      nextSelector: '#slider-next',
      prevSelector: '#slider-prev',
      nextText: '<i class="fa fa-chevron-right fa-3x" aria-hidden="true"></i>',
      prevText: '<i class="fa fa-chevron-left fa-3x" aria-hidden="true"></i>'
    });
  });

}).call(this);
