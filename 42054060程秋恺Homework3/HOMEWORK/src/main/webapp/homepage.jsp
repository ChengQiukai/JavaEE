
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<title>Home page</title>
<%
    String user=(String) request.getSession().getAttribute("user");
    out.print("<br/>Welcome, "+user);
%>
<br>
<a href="log-out" method="get" action="log-out" id="out" target="_parent">Log Out</a>
<script>
    $(function (){
        $("#out").click(function (){
            return window.confirm("Want to log out?")
        })
    })
</script>
</body>
</html>
