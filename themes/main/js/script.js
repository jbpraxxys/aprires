$(document).ready(function(){
    app.init();

});

  var app = {

      init:function(){
        var setup = this.setup;

        switch(pageID){
            case 'HomePage':
              setup.home();
            break;
           
    
        }
        setup.bindEvents();
      },

      setup:{
        bindEvents: function(){

          //SCROLL FUNCTION
           function goToByScroll(id){
            $('html,body').animate({
                scrollTop: $("#"+id).offset().top -67},
                'slow');
          }

          $(".header ul > li > a, .sitemap-links > p > a").click(function(e) { 
                // Prevent a page reload when a link is pressed
              e.preventDefault(); 
                // Call the scroll function
              goToByScroll($(this).attr("title"));   
          });  

          //SET ACTIVE MENU FUNCTION
          $('.header ul > li > a').first().addClass('active');

          $('.header ul > li > a').click(function(){
            $('.header ul > li > a').removeClass('active');
           $(this).addClass('active');
          
         });  

          $(window).on('scroll',function(e){
                var self = $(this),
                  height= self.height(),
                  top = self.scrollTop();
                  height = 100;
                  if (top >=height) {
                      $('#header-holder').addClass('shrink');
                      $('.header').addClass('shrink');

                      $('.side-nav').addClass('shrink');

                  }
                  else{
                    $('#header-holder').removeClass('shrink');
                      $('.header').removeClass('shrink');

                      $('.side-nav').removeClass('shrink');
                  }
              });


        // ANIMATION EFFECT ON SCROLL

        var controller = new ScrollMagic.Controller();

              $('.fade-in').each(function() {

                  new ScrollMagic.Scene({
                      triggerElement: this,
                      triggerHook: 0.9,
                      reverse: true,
                  })
                  .setClassToggle(this, 'animate')
                  .addTo(controller);
              });

              $('.fade-in-left').each(function() {

                  new ScrollMagic.Scene({
                      triggerElement: this,
                      triggerHook: 0.8,
                      reverse: true,
                  })
                  .setClassToggle(this, 'animate')
                  .addTo(controller);
              });

              $('.fade-in-right').each(function() {

                  new ScrollMagic.Scene({
                      triggerElement: this,
                      triggerHook: 0.8,
                      reverse: true,
                  })
                  .setClassToggle(this, 'animate')
                  .addTo(controller);
              });

              $('.fade-in-up').each(function() {

                  new ScrollMagic.Scene({
                      triggerElement: this,
                      triggerHook: 0.8,
                      reverse: true,
                  })
                  .setClassToggle(this, 'animate')
                  .addTo(controller);
              });
              $('.fade-in-down').each(function() {

                  new ScrollMagic.Scene({
                      triggerElement: this,
                      triggerHook: 0.8,
                      reverse: true,
                  })
                  .setClassToggle(this, 'animate')
                  .addTo(controller);
              }); 

               // SLICK SLIDER
        
               $('.news-slider').slick({
                dots: false,
                infinite: true,
                speed: 700,
                autoplay:false,
                autoplaySpeed: 2000,
                arrows:true,
                slidesToShow: 1,
                slidesToScroll: -1,
                adaptiveHeight: true,
                nextArrow: '<i class="slick-prev ion-ios-arrow-left"></i>',
                prevArrow: '<i class="slick-next ion-ios-arrow-right"></i>',
                responsive: [
                  {
                    breakpoint: 600,
                    settings: {
                      slidesToShow: 1,
                      slidesToScroll: 1
                    }
                  },
                  {
                    breakpoint: 415,
                    settings: {
                      slidesToShow: 1,
                      slidesToScroll: 1
                    }
                  }
                ]
                
             });  

          //CONTACT FORM
          initForms();
          
          function initForms() {
            app.form.init({
                form:$('#contactForm'),
                url:$('#contactForm').data('action'),
                // message: '#form-message',
                button: '#contactBtn',
                onEnd: function() {
                    $('#contactForm #form-message').css('display','block');
                },
            });
        }

        $('#mobile-ham').click(function(){
            $('.side-nav').toggleClass("show");
            
        });  
        $('.side-nav > a').click(function(e){
        
              e.preventDefault(); 
               
              goToByScroll($(this).attr("title")); 
              $('.side-nav').removeClass("show");
        });

       


      },
      home:function(){
        
        // @ Services Slider
           $('.frame3-slider').slick({
               dots: false,
               infinite: true,
               speed: 700,
               autoplay:false,
               autoplaySpeed: 2000,
               arrows:true,
               slidesToShow: 4,
               slidesToScroll: -1,
               nextArrow: '<i class="slick-prev ion-ios-arrow-left"></i>',
               prevArrow: '<i class="slick-next ion-ios-arrow-right"></i>',
               responsive: [
                 {
                   breakpoint: 801,
                   settings: {
                     slidesToShow: 2,
                     slidesToScroll: 1
                   }
                 },
                 {
                   breakpoint: 551,
                   settings: {
                     slidesToShow: 1,
                     slidesToScroll: 1
                   }
                 }
               ]
            });

            app.form.init($('#contactForm'), $('#contactBtn'), 'form/contact/send', false);


      },    
    
    },
    form: {
      /**
      * SENDING FORM
      * - Identify the form name, button name, the url (controller route), and if you want to 'refresh' the page. 
      **/
      init: function(formName, btnName, routeVal, boolean) {
        var form = formName,
          btn = btnName,
          route = routeVal,
          bool = boolean;

        form.validate({
          submitHandler: function(form) {
            swal({
              title: 'Sending ...',
              text: '',
              timer: 2000,
              onOpen: function () {
                swal.showLoading()
              }
            })
            var vars = $(form).serialize();
            $.post(baseHref + route, vars, function(data) {
              switch(data.status) {
                case 0:
                  setMessage(false,data.message);
                break;
                case 1: 
                  setMessage(true,data.message);
                  $(form).trigger('reset');
                  if(bool == true) {
                    
                    window.location.reload(1);
                    
                  }

                break;
              }

            }, 'json');
          }
        });

        $(btn).on('click', function(e) {
          e.preventDefault();
          form.submit();

          //label error -- for mobile
          if($(window).width() < 900) {
            $('label.error').empty();
            $('label.error').text("*");
          }
        });

        function setMessage(status, msg) {
          if(status) {
            swal('',msg,'success')
          } else {
            swal('',msg,'error')
          }
        }
      }
    }
  };
