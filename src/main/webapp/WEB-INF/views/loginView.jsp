<!DOCTYPE html>
<html>
   <head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com">
   <link href="https://fonts.googleapis.com/css2?family=Titillium+Web:wght@200&display=swap" rel="stylesheet">
   <link rel="stylesheet" href="./css/basic_stylesheet.css">
      <meta charset="UTF-8">
      <title>Login</title>
   </head>
   <body>

      <jsp:include page="_menu.jsp"></jsp:include>   

      <h3>Login Page</h3>

      <p style="color: red;">${errorString}</p>

      <form method="POST" action="${pageContext.request.contextPath}/login">
         <input type="hidden" name="redirectId" value="${param.redirectId}" />
         <table>
            <tr>
               <td>User Name</td>
               <td><input type="text" name="userName" value= "${user.userName}" /> </td>
            </tr>
            <tr>
               <td>Password</td>
               <td><input type="password" name="password" value= "${user.password}" /> </td>
            </tr>
         
            <tr>
               <td colspan ="2">
                  <input class="button" type="submit" value= "Submit" />
                  <a href="${pageContext.request.contextPath}/">Cancel</a>
               </td>
            </tr>
         </table>
      </form>
     
 

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
.button{
border:0px;
border-radius:15px;

}
</style>
</html>