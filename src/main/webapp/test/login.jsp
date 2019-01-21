<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="/demo/js/jquery-3.3.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form action="/demo/user/login" method="get"><!-- 工程名  **    方法 --> 
<!-- 	/demo/user/login?code=111&pass=abc -->
<% request.getParameter("code"); %>
		账号：<input type="text" name="code" value='111' /><br> 
		密码：<input type="password" name="pass" /><br> 
		<input type="submit" value="提交" />
		<input type="reset" value="重置"/>
		<button>aaa</button>
	</form>
	
	
	<br><br><br><br>
	<button onclick="aa()">AA</button>
	<script type="text/javascript">
	  layui.use({"form","jquery"},function(){
		var form=layui.form;
		var $=layui.jquery;
		form.on("submit(login)"),function(data){
				$.ajax({
					type : "get",
					url : "/demo/user/login2",//url : "/demo/user/login3",
					dataType : "text",//json:返回JSON数据 。text:返回纯文本字符串//dataType : "json"
					data : {
						code : $("[name='code']").val(),
						pass : $("[name='pass']").val()
					}, //data发送到服务器的数据。//data:data,field,
					traditional:true,
					success : function(data) {
						alert(data)
						console.log(typeof data);
						console.log(data);
					}
					/*success : function(result) {
					console.log(result);
					alert(result.code)
					location.href="/demo/text/result.jsp";}//bom window history*/
				
				})
		}
		  
	  })
	
	</script>
</body>
</html>