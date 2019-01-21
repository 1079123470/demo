<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/demo/js/jquery-3.3.1.min.js"></script>
</head>
<body>
<!-- 	/demo/user/login?code=111&pass=abc -->
	<form action="/demo/user/login" method="get">
		账号：<input type="text" name="code" value='111' /><br> 
		密码：<input type="password" name="pass" /><br> 
		<input type="reset" value="重置" />
		<input type="submit" value="提交" />
		<input type="button" value='aa' onclick="aa()"> 
		<button>aaa</button>
	</form><br><br><br><br>
	<button onclick="aa()">AA</button><br><br>
	<button onclick="stop1()">stop</button><br><br>
	<div id='aa'></div><div id='bb'>sgdsgsg</div>
	<script type="text/javascript">
		function aa() {
			$.ajax({//异步提交 局部刷新
				type : "get",
				url : "/demo/user/login3",
				data : {
					code : $("[name='code']").val(),
					pass : $("[name='pass']").val()
				}, //data发送到服务器的数据。
				dataType : "json",//json:返回JSON数据 。text:返回纯文本字符串
				success : function(data) {
					alert(data)
					console.log(typeof data);
					console.log(data);
					$("#bb").html(data.code)
				}
			})
			console.log(1111)
		}
		var f1 = function (){
			var data = new Date();//获得当前时间
			var s = data.toLocaleString();//时间对象变成字符串
			document.getElementById("aa").innerHTML=s;
		}
		//每1000毫秒执行一次f1方法
		var x = setInterval(f1,1000);//定时器
		
		function stop1(){
			clearInterval(x);//取消定时
		}
	</script>
</body>
</html>