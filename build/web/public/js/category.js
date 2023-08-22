

jQuery('.category-menu-list .right-menu.cat-mega-title').parent('ul').addClass('cat-mega-menu');
  
  
$('.rx-parent').on('click', function(){
 $('.rx-child').slideToggle();
 $(this).toggleClass('rx-change');
});


     /* Show hide Option */  
   $( ".category-menu-list > ul > li:gt(10)" ).addClass( "rx-child" );

   if ($('.rx-parent').hasClass("rx-child")) {
     $('.rx-parent').removeClass('rx-child');
   } 


   $('.rx-parent').on('click', function(){
     $(this).toggleClass('rx-change');
   });

