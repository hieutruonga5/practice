<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/all.css">
</head>

<body>
	 <div class="container-fluid" style=" padding: 10px; border: 0.5px solid black;  ">
    	<div class="row">
            <div class="col-12 col-md-10 ">CMS</div>
            <div class="col-12 col-md-2 ">
                <a href="showEditMember?email=${email}">User Profile</a>
                <a href="Logout">Logout</a>
            </div>
        </div>
        <div class="row border ">
        	<div class="col-12 col-12 col-md-2 pt-5 border">
        								<form action="SearchContent" method="get">
				                <div class="input-group">
				                      <input type="search" name = "content" id="form1" class="form-control" />
				                	 <!--   <button type="button" class="btn btn-primary">
				                      <i class="fas fa-search"></i>
				                    </button>  -->
				                    <input type="submit" value = "Search"> 
				                </div>
                </form>
                <br><br><a href="showListContent" >View Content</a><br><br>
                <a href="AddContent.jsp" >Form Content</a>

            </div>
             <div class="col-12 col-12 col-md-10">
          	 	<div class="form-group">
		                <h2> View Content </h2>
		        </div>
				<table id="dtBasicExample"
					class="table table-striped table-bordered table-sm">
					<thead>
						<tr>
							<th>#</th>
							<th>Title</th>
							<th>Brief</th>
							<th>Create Date</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${contents}" var="content" varStatus="status">
							<tr>
								<th scope="row">${status.count}</th>
								<td>${content.title}</td>
								<td>${content.brief}</td>
								<td>${content.createDate}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
    	</div>
    </div>


    <script src="js/jquery-3.5.1.js"> </script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/all.js"></script>
</body>

</html>