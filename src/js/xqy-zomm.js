


        
        ;jQuery(function($){
            
            $('.list li').mouseover(function(){
                $(this).css({'border':'2px solid red'})
            }).mouseout(function(){
                $(this).css('border',0)
            })


            //放大镜效果和大图小图的切换
            $('.big-img li').wuzoom({width:300,height:300,gap:10});

            $('.list li a').on('click','img',function(){
                $('.big-img li img').attr({
                    'src':this.src,
                    'data-big':this.dataset.big
                });
            })

        });

