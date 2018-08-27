

window.addEventListener('DOMContentLoaded',function(){

//回到顶部
(function(){
 
    var TT = document.querySelector('#TT');
    var tt = document.querySelector('.t1');
    window.onscroll =function(){
        var scrollTop = window.scrollY;

        if(scrollTop >= 500){
            TT.style.display = 'block';
        }else{
            TT.style.display = 'none';
        }
    }

  tt.onclick = function(){

        var timer = setInterval(function(){


            var speed = parseInt(window.scrollY/5);
            if(window.scrollY <= 10){
                speed = 0
                clearInterval(timer);
            }
            scrollBy(0, -speed);

        },30);
    
}
   
})();



//轮播图

    (function(){

        var flash = document.getElementById('flash');
        var is = flash.getElementsByTagName('img');
        var bul2 = document.getElementsByClassName('b-ul2')[0];
        var bli = bul2.getElementsByClassName('b-li');console.log(bli);
        var bs1 = document.querySelector('.b-s1');
        var bs2 = document.querySelector('.b-s2');

        var index = 0;
        var timer;
        function run(){
            index++;
            if(index>=is.length){
                index = 0;
            }
            for(var i=0;i<is.length;i++){
                is[i].style.display = 'none';
                bli[i].style.background = '';
            }
            is[index].style.display = 'block';
            bli[index].style.background = '#0040FF';
        }
        //定时器调用的函数
        timer=setInterval(run,1000);

       

        //移入关闭定时器
        flash.onmouseover = function(){
            clearInterval(timer);
        }

        //移出开启定时器
        flash.onmouseout = function(){
             timer=setInterval(run,1000);

        //     timer=setInterval(function(){
        //     index++;
        //     if(index>=is.length){
        //         index = 0;
        //     }
        //     for(var i=0;i<is.length;i++){
        //         is[i].style.display = 'none';
        //         bli[i].style.background = '';
        //     }
        //     is[index].style.display = 'block';
        //     bli[index].style.background = '#0040FF';

        // },1000)
           
        }
//点击下标切换图片
    
        for(var i=0;i<bli.length;i++){
            bli[i].onclick = function(){
                for(var i=0;i<bli.length;i++){
                    if(bli[i]==this){
                        index = i;
                        break;
                    }
                }
                for(var i=0;i<is.length;i++){
                is[i].style.display = 'none';
                bli[i].style.background = '';
            }
                is[index].style.display = 'block';
                bli[index].style.background = '#0040FF';
            }
        }

 

//点击按钮切换图片
//上一张
         bs1.onclick = function(){
            index--;
            if(index<0){
                index = is.length-1;
            }
            for(var i=0;i<is.length;i++){
                is[i].style.display = 'none';
                bli[i].style.background = '';
            }
            is[index].style.display = 'block';
            bli[index].style.background = '#0040FF';
        }

//下一张
        bs2.onclick = function(){
            run();
        }

})();
        


/// 抢购时间倒计时
(function(){

    var time = document.querySelector('.time');console.log(time)


    var d= '2018-10-1 14:00:00';

    var timer = setInterval(function(){

        var off = Math.round((Date.parse(d)-Date.now())/1000);

        if(off < 0){
            clearInterval(timer);
        }

        var sec = off%60;
        var min = Math.floor((off/60)%60);
        var hour = Math.floor((off/60/60)%24);


        sec = sec < 10 ? '0'+sec : sec;
        min = min < 10 ? '0'+min : min;
        hour = hour <10 ? '0'+hour : hour;

        time.innerHTML = hour + '&nbsp;' + ':' + '&nbsp;' + min  + '&nbsp;' + ':' + '&nbsp;'  + sec;

    },1000)

})();















});


