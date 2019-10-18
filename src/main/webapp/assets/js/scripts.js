jQuery(document).ready(function () {

    /*
        Fullscreen background
    */
    $.backstretch("assets/img/backgrounds/1.jpg");

    $('#top-navbar-1').on('shown.bs.collapse', function () {
        $.backstretch("resize");
    });
    $('#top-navbar-1').on('hidden.bs.collapse', function () {
        $.backstretch("resize");
    });

    $("#con2").fadeOut(400,function () {

    })
    /*
        Form
    */
    $('.registration-form fieldset:first-child').fadeIn('slow');

    $('.registration-form input[type="text"], .registration-form input[type="password"], .registration-form textarea').on('focus', function () {
        $(this).removeClass('input-error');
    });

    var flag = 0;

    $("#sure").on("click", function () {

        $("#name").removeAttr("disabled");
        $("#tel").removeAttr("disabled");
        $("#infomation").removeAttr("disabled");

        // 1 是查找数据 2是添加用户
        var name = $("#name").val();
        var tel = $("#tel").val();
        var infomation = $("#infomation").val();

        var data = {
            user_name: name,
            user_tel: tel,
            user_info: infomation,
            flag: flag
        }
        //判断是否为空
        if (isEmpty(data.user_name)) {
            alert("用户名为空")
            return false;
        }
        //判断是否为电话
        if (!isPoneAvailable(data.user_tel)) {
            alert("电话号码错误")
            return false;
        }

        $.ajax({
            type: "post",
            url: 'update',
            dataType: "json",
            async: false,
            data: data,
            success: function (data) {
                if(data.result==true){
                    $("#caozuo").text("添加成功")
                }else {
                    $("#caozuo").text("添加失败")
                }
                show()
            },
            error: function () {
                window.alert("查询失败");
            }
        });

        if(flag!=1){
            $("#con1").fadeOut(400, function () {
                $("#con2").fadeIn();
            })
        }
        return false;
    })

    $("#back").on("click", function () {

        $("#con2").fadeOut(400, function () {

            $("#con1").fadeIn();
        })
        return false;

    })


    //1 为查看用户 2 是添加用户 3 是修改用户 4 是删除用户
    $(".kk").on("click", function () {
        var index = parseInt($(this).val());
        console.log("选择了  " + index);
        flag = index;

        //查找用户
        if (flag == 1) {
           show()
        }
        //添加用户
        if (flag == 2) {
             $("#name").val("");
            $("#tel").val("");
            $("#infomation").val("");
        }

        if(flag==3){
            $("#name").attr("disabled", "disabled");
        }
        if(flag==4){
            $("#name").attr("disabled", "disabled");
            $("#tel").attr("disabled", "disabled");
            $("#infomation").attr("disabled", "disabled");
        }

    })

    //是电话号码 ，返回true
    function isPoneAvailable(poneInput) {
        var myreg = /^[1][3,4,5,7,8][0-9]{9}$/;
        if (!myreg.test(poneInput)) {
            return false;
        } else {
            return true;
        }
    }

    function show() {
        $.ajax({
            type: "post",
            url: 'check',
            dataType: "json",
            async: false,
            data: {flag: flag},
            success: function (data) {
                console.log(data.result);
                var rel = data.result;
                $("#mytable").empty();
                var biaoti = $(" <tr>\n" +
                    "                                        <th>姓名</th>\n" +
                    "                                        <th>电话号码</th>\n" +
                    "                                        <th>用户信息</th>\n" +
                    "\n" +
                    "                                    </tr>");

                $("#mytable").append(biaoti);
                var j = 0;
                for (var i in rel) {
                    console.log(rel[i]);
                    console.log(rel[i].user_information)
                    var yuansu = $(" <tr value=" + j + " class='table-item'>\n" +
                        "                                        <td class=\"name\">" + rel[i].user_name + "</td>\n" +
                        "                                        <td class=\"tel\">" + rel[i].user_telephone + "</td>\n" +
                        "                                        <td class=\"inf\">" + rel[i].user_information + "</td>\n" +
                        "                                    </tr>");
                    j++;
                    $("#mytable").append(yuansu);

                }
                //时间委托
                $("#mytable").on("click", ".table-item", function () {
                    console.log($(this).val());
                    var name = $(this).children(".name").text();
                    var tel = $(this).children(".tel").text();
                    var inf = $(this).children(".inf").text();
                    $("#name").val(name);
                    $("#tel").val(tel);
                    $("#infomation").val(inf);
                })
            },
            error: function () {
                window.alert("查询失败");
            }
        });
    }
    //是空 返回true
    function isEmpty(obj) {
        if (typeof obj == "undefined" || obj == null || obj == "") {
            return true;
        } else {
            return false;
        }
    }
});
