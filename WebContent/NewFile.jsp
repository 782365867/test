<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery-1.7.2.js"></script>
<script type="text/javascript">
$(function(){
	$(":input[name='username']").change(function(){
		var val = $(this).val();
		val = $.trim(val);
		
		if(val != ""){
			var url = "${pageContext.request.contextPath}/valiateUserName";
			var args={"userName":val,"time": new Date};
			$.post(url,args,function(data){
				$("#message").html(data);
			})
		} 
	})
})
</script>
</head>
<body>
<form action="" method="post">
username:<input type="text" name="username"/>
<br><br>
<div id="message"></div>
<br><br>
<input type="submit" value="提交"/>
</form>
</body>
</html>