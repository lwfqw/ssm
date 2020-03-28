<%--
  Created by IntelliJ IDEA.
  User: 短相思兮无穷极
  Date: 2020/3/26
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="${pageContext.request.contextPath}/css/admine.css" rel="stylesheet" type="text/css" >
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
    </script>
    <title>欢迎您,${currUser.name}  </title>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/live2d-widget@3.0.4/lib/L2Dwidget.min.js"></script>
<script>
    L2Dwidget.init();
</script>
<div align="center" style="height: 50%;width: 50%">
 <ul>
     <li>电话号码:    ${currUser.tel}</li><br/>
     <li>姓名:        ${currUser.name}</li><br/>
     <li>所在城市:    ${currUser.city}</li><br/>
     <li>个性签名:    ${currUser.comment}</li><br/>
     <li><a href="${pageContext.request.contextPath}/qinMing/user/heihei">我的项目</a> </li><br/>
     <li><a href="https://github.com/lwfqw">我的github</a> </li><br/>
     <li><a href="http://121.36.15.222:8080/">我的博客</a> </li>
     <a href="${pageContext.request.contextPath}/qinMing/user/change"><img src="${pageContext.request.contextPath}/images/bq.jpg"></a>
 </ul>
</div>
</body>
</html>
