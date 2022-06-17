<html>
   <head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com">
   <link href="https://fonts.googleapis.com/css2?family=Titillium+Web:wght@200&display=swap" rel="stylesheet">
   <link rel="stylesheet" href="./css/basic_stylesheet.css">
      <meta charset="UTF-8">
   </head>
   <body>
   


<div>
<a class="hub" href="${pageContext.request.contextPath}/employeeTask">
  HUB
</a>
||
<a class="more"  href="${pageContext.request.contextPath}/managerTask">
  MORE
</a>
||
<a class="account" href="${pageContext.request.contextPath}/userInfo">
  ACCOUNT
</a>
|| 
<a class="account" href="${pageContext.request.contextPath}/home">
  HOME
</a>          
||
<a class="login" href="${pageContext.request.contextPath}/login">
  LOGIN
</a>
||
<a class="logout" href="${pageContext.request.contextPath}/logout">
  LOGOUT
</a>

&nbsp;
<span style="color:red">[ ${loginedUser.userName} ]</span>
</div>

   </body>
<style>
div{
display:flex;
flex-direction: row;
justify-content: center;
background: e7e7e7;
ancor: none;
font-size: 35px;
font-family: 'Titillium Web', sans-serif;
}
a{
text-decoration: none;
}
a:hover {
  color: hotpink;
  text-decoration: none;
}
body{
margin: 0% 7%; 
font-size: 20px;
font-family: 'Titillium Web', sans-serif;
}
</style>
</html>