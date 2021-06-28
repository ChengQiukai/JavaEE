<%@ page import="javax.imageio.ImageIO" %>
<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="java.io.ByteArrayOutputStream" %>
<%@ page import="java.util.Base64" %><%--
  Created by IntelliJ IDEA.
  User: shhwp
  Date: 2021/6/4
  Time: 17:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Your Avatar</title>
</head>
<body>
<img src="data:image/png;base64,${imageAsBase64}" />
<%
    String user=(String) request.getAttribute("name");
    String gender=(String) request.getAttribute("sex");
    out.print("<br/>Username: "+user);
    out.print("<br/>Gender: "+gender);
%>
</body>
</html>
