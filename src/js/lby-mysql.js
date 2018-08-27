
        //列表页请求数据库生成数据
            ;jQuery(function($){
                var goodsUl = document.querySelector('.goods-ul');
                $.ajax({
                    type: 'post',
                    data: null,
                    contentType: "application/x-www-form-urlencoded; charset=utf-8",
                    url: '../api/lby.php',
                    success: function(res){
                        var data = JSON.parse(res);

                        var ul = document.createElement('ul');
                        ul.innerHTML = data.map((item,idx)=>{
                            return `<li data-id="${data[idx].id}">
                                    <a class="a-img" href="xqy.html"><img src="${item.imgurl}" alt=""></a>
                                    <p class="p1"><a href="xqy.html">${item.pa}</a></p>
                                    <p class="p2">${item.pb}</p>
                                    <p class="p3">飞虎价:<span>${item.price}</span></p>
                                    <p class="p4"><a href="javascript:;">${item.pc}</a></p>
                            </li>`
                        }).join('');


                        goodsUl.appendChild(ul);
                    }
                })
            });



