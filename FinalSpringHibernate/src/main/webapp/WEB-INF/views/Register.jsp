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
    <div class="container" style="width: 40%; border: 1px solid black;">
        <form:form action="Register" method="post" modelAttribute="member">
            <div class="form-group">
                <h2>Register : </h2>
            </div>
            <div class="form-group">
                <form:input type="text" class="form-control" path="firstName" placeholder="User name"/>

            </div>
            <div class="form-group">
                <form:input type="text" class="form-control" path="email" placeholder="E-mail"/>
                 <small id="errorEmail" class="form-text text-muted alert-danger"></small>
            </div>
            <div class="form-group">
                <form:input type="password" class="form-control" path="password" placeholder="Password"/>
            </div>
            <div class="form-group">
                <input type="password" class="form-control" id="rePassword" placeholder="Re Password">
                <small id="errorPass" class="form-text text-muted alert-danger"></small>
            </div>
              <div class="form-group alert-danger" >
            <% String errorMessage = (String)request.getAttribute("errorMessage"); %>
            			<%=errorMessage==null?"":errorMessage%>
            </div>
            <input id="signIn" style="width: 100%;" class="btn btn-success " type="submit" value="Register">
            <br>
            <a href="showLogin">Click here to Login </a>
        </form:form>
    </div>

	
    <script src="js/jquery-3.5.1.js"> </script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/all.js"></script>
    <script type="text/javascript">
		var regexEmail = /^[\w]+@[a-zA-Z.]*(\.[a-zA-Z]{2,3})+$/;
		
		
		$("#signIn").on("click", function (e) {
			var check = true;
			$(".text-muted").text("");
			var email = $('#email').val();
			var password = $('#password').val();
			var rePassword = $('#rePassword').val();
			if (!regexEmail.test(email)) {
	            $("#errorEmail").text("Email invalid");
	            check = false;
	        }
			if(password != rePassword){
				$("#errorPass").text("Repassword not equal password");
				  check = false;
			}
	        return check;
	    });
	</script>
</body>

</html>