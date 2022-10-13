<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
     <link href="<c:url value="/css/bootstrap.min.css" />" rel="stylesheet">
      <link href="<c:url value="/css/all.css" />" rel="stylesheet">
</head>

<body>

    <div class="container" style="width: 40%;  border: 0.5px solid black;  ">
        <form:form action="checkLogin" method = "post" modelAttribute="member">
            <div class="form-group">
                <h2>Please Sign In : </h2>
            </div>
            <div class="form-group">
                <form:input type="text" class="form-control" path="email" placeholder="E-mail" />

            </div>
            <div class="form-group">
                <form:input type="password" class="form-control" path ="password" placeholder="Password"/>
            </div>
            <div class="form-group alert-danger" >
            <% String errorMessage = (String)request.getAttribute("errorMessage"); %>
            			<%=errorMessage==null?"":errorMessage%>
            </div>
            <div class="form-check">
                <label class="form-check-label ">
                    <input type="checkbox" class="form-check-input "id="" value="checkedValue">
                    Remember Me
                </label>
            </div>
            <input id="signIn" style="width: 100%;" class="btn btn-success " type="submit" value="Login">
            <br>
            <a href="showRegister">Click here to Register</a>
        </form:form>
    </div>


    <script src="js/jquery-3.5.1.js"> </script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/all.js"></script>
</body>

</html>