<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>HelloWorld</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="assets/js/ajax-pushlet-client.js"></script>
</head>
<script type="text/javascript">
	PL._init();
	PL.joinListen("/message");
	function postMessage() {
		p_publish('/message', 'content', 'hello!');
	}
</script>

<body>
	<button  onclick="javascript:postMessage()">postmsg</button>
</body>
</html>