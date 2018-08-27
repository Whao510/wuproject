


    ;jQuery(function($){

        $('.i-down').click(function(){

            $(this).css('transform','rotate(180deg)')
            // $(this).css('transform','rotate(0deg)')
            
            $('.wu-dv0-ul').toggle()
        });
    });


    
    ;jQuery(function($){
         //获得文本框对象
        var t = $(".s-inp");
        //数量增加操作
        $('.s-btn1').click(function(){
            t.val(parseInt(t.val())+1)
            if (parseInt(t.val())!=1){
                $('.s-inp').attr('disabled',false); 
            }

            });

            //数量减少操作
            $('.s-btn0').click(function(){


            t.val(parseInt(t.val())-1);
            if (parseInt(t.val())<1){
                $('.s-inp').val("1");
                // $('.s-inp').attr('disabled',true);
                alert('商品数量最少为1');
              
            }
            });

            //判断是否为数值
            $('.s-inp').blur(function(){
            var b = Number(this.value);
            if(!b){
                alert('请输入正确的数量');
            }
            });
          
    });
