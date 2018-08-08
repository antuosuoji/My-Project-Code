/*手机头部导航*/
$(function(){ 
    $(".nav_h").click(function(){
        if($(".nav_ul").css("display") == "none"){
            $(".nav_ul").slideDown();
            $(this).children(".heng1").css({"transform": "rotate(-45deg)", "margin-top": 10});
            $(this).children(".heng2").css({"opacity": 0});
            $(this).children(".heng3").css({"transform": "rotate(45deg)", "margin-top": -17});
        }else{
            $(".nav_ul").slideUp();
            $(this).children(".heng1").css({"transform": "rotate(0deg)", "margin-top": 0});
            $(this).children(".heng2").css({"opacity": 1});
            $(this).children(".heng3").css({"transform": "rotate(0deg)", "margin-top": 0});
        }
    });
});



/*首页banner图*/
$(function(){
    var swiper = new Swiper('.banner .swiper-container', {
        loop: true,
        slidesPerView: 1,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        pagination: {
            el: '.banner .swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.banner .swiper-button-next',
            prevEl: '.banner .swiper-button-prev',
        },
    });
});



/*案例合作伙伴*/
$(function(){
    var swiper = new Swiper('.case2 .swiper-container', {
        slidesPerView: 3,
        spaceBetween: 80,
        slidesPerGroup: 1,
        loop: true,
        loopFillGroupWithBlank: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        pagination: {
            el: '.case2 .swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.case2 .swiper-button-next',
            prevEl: '.case2 .swiper-button-prev',
        },
        breakpoints: {
            640: {
            slidesPerView: 1,
            spaceBetween: 40,
            slidesPerGroup: 1,
            },
        }
    });
});



/*关于我们专利证书*/
$(function(){
    var swiper = new Swiper('.ab3 .swiper-container', {
        slidesPerView: 5,
        spaceBetween: 36,
        slidesPerGroup: 1,
        slidesPerColumn: 2,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        pagination: {
            el: '.ab3 .swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.ab3 .swiper-button-next',
            prevEl: '.ab3 .swiper-button-prev',
        },
        breakpoints: {
            768: {
            slidesPerView: 4,
            slidesPerGroup: 1,
            },
            640: {
            slidesPerView: 1,
            slidesPerGroup: 1,
            },
        }
    });
});



/*技术*/
$(function(){
    var swiper = new Swiper('.js1_fr .swiper-container', {
        loop: true,
        slidesPerView: 1,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        direction: 'vertical',
        pagination: {
            el: '.js1_fr .swiper-pagination',
            clickable: true,
        },
        breakpoints: {
            640: {
            direction: 'horizontal',
            },
        }
    });
});
$(function(){
    function tabs(tabTit,on,tabCon){
        $(tabTit).children().click(function(){
            $(this).addClass(on).siblings().removeClass(on);
            var index = $(tabTit).children().index(this);
            $(tabCon).children().eq(index).show().siblings().hide();
        });
    };
    tabs(".js2_tab1","bg",".js2_tab2");
});



/*new*/
$(function(){
    var swiper = new Swiper('.new3 .swiper-container', {
        slidesPerView: 4,
        spaceBetween: 40,
        slidesPerGroup: 4,
        loop: true,
        loopFillGroupWithBlank: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        pagination: {
            el: '.new3 .swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.new3 .swiper-button-next',
            prevEl: '.new3 .swiper-button-prev',
        },
        breakpoints: {
            640: {
            slidesPerView: 1,
            spaceBetween: 40,
            slidesPerGroup: 1,
            },
        }
    });
});