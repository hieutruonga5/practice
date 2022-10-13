<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
                <a href="showProfileMember?email=<%= session.getAttribute("email") %>" />User Profile</a>
                <a href="logout">Logout</a>
            </div>
        </div>
        <div class="row border ">
        	<div class="col-12 col-12 col-md-2 pt-5 border">
                 <div class="input-group">
				                     <input type="text" name = "content" id="form1" class="form-control content" />
				                     <a href="javascript:void(0)" class="btnSearch btn btn-primary"><i class="fas fa-search"></i></a> 
				                </div>
                <br><br><a href="showListContent" >View Content</a><br><br>
                <a href="AddContent.jsp" >Form Content</a>

            </div>