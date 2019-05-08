  // SideNav Button Initialization
$(".button-collapse").sideNav({
    breakpoint: 1200
  });
  // SideNav Scrollbar Initialization
  var sideNavScrollbar = document.querySelector('.custom-scrollbar');
  Ps.initialize(sideNavScrollbar);  
  
  //toster
  
  $(function () {
		
		$('#t1').click(function () {
	
		toastr.info("Folder 3 has been clicked!", "Folder 3");
		});
		});
  
  
  // card carosel
  
  
  $('.carousel.carousel-multi-item.v-2 .carousel-item').each(function(){
	  var next = $(this).next();
	  if (!next.length) {
	    next = $(this).siblings(':first');
	  }
	  next.children(':first-child').clone().appendTo($(this));

	  for (var i=0;i<3;i++) {
	    next=next.next();
	    if (!next.length) {
	      next = $(this).siblings(':first');
	    }
	    next.children(':first-child').clone().appendTo($(this));
	  }
});
  
  
 