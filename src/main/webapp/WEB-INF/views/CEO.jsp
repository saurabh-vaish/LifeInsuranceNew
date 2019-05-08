<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Raleway:400,500,500i,700,800i"
	rel="stylesheet">
<!------ Include the above in your HEAD tag ---------->

<script type="text/javascript">
$(document).ready(function () {
$('.navbar-light .dmenu').hover(function () {
        $(this).find('.sm-menu').first().stop(true, true).slideDown(150);
    }, function () {
        $(this).find('.sm-menu').first().stop(true, true).slideUp(105)
    });
});
</script>
</head>

<body>

	<nav class="navbar navbar-expand-sm   navbar-light bg-light">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarTogglerDemo03"
			aria-controls="navbarTogglerDemo03" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
				<li class="nav-item"><a class="nav-link" href="#">Home <span
						class="sr-only">(current)</span></a></li>

				<li class="nav-item dropdown dmenu"><a
					class="nav-link dropdown-toggle" href="#" id="navbardrop"
					data-toggle="dropdown"> Branch </a>
					<div class="dropdown-menu sm-menu">
						<a class="dropdown-item" href="/LifeInsuranceNew/ceo/showReg">Registration</a> <a
							class="dropdown-item" href="/LifeInsuranceNew/ceo/branchCodeUpadte">Modification</a> <a
							class="dropdown-item" href="/LifeInsuranceNew/ceo/branchCodeDelete">Deletion</a>
					</div></li>
				<li class="nav-item dropdown dmenu"><a
					class="nav-link dropdown-toggle" href="#" id="navbardrop"
					data-toggle="dropdown"> Policies </a>
					<div class="dropdown-menu sm-menu">
						<a class="dropdown-item" href="#">Registration</a> <a
							class="dropdown-item" href="#">Modification</a>
					</div></li>
				<li class="nav-item dropdown dmenu"><a
					class="nav-link dropdown-toggle" href="#" id="navbardrop"
					data-toggle="dropdown"> Branch Manager </a>
					<div class="dropdown-menu sm-menu">
						<a class="dropdown-item" href="#">Registration</a> <a
							class="dropdown-item" href="#">Modification</a> <a
							class="dropdown-item" href="#">Deletion</a>
					</div></li>
				<li class="nav-item dropdown dmenu"><a
					class="nav-link dropdown-toggle" href="#" id="navbardrop"
					data-toggle="dropdown"> Reports </a>
					<div class="dropdown-menu sm-menu">
						<a class="dropdown-item" href="#">Policies Details</a> <a
							class="dropdown-item" href="/LifeInsuranceNew/ceo/reportBranch">Branch Details</a> <a
							class="dropdown-item" href="#">Managers Details</a>
							 <a
							class="dropdown-item" href="#">Agents Details</a> <a
							class="dropdown-item" href="#">Customers Details</a>
							<a
							class="dropdown-item" href="#">Customers Policies Details</a>
					</div></li>
				<li class="nav-item"><a class="nav-link" href="#">Bonus Rates
						Us</a></li>
				
			</ul>
			<div class="social-part">
				<li class="nav-item"><a class="nav-link" href="#">Logout</a></li>
			</div>
		</div>
	</nav>

	<c:if test="${bdata!=null}">

		<h2>Branch Details Are :</h2>
		<table class="table table-stripped">
			<tr>
				<th>BranchId</th>
				<th>BranchName</th>
				<th>BranchLocation</th>
				<th>BranchDate</th>
				<th>BranchPhone</th>
				<th>BranchState</th>
				<th>Update Branch</th>
				<th>Delete Branch</th>
			</tr>
			<c:forEach items="${bdata}" var="b">
				<tr>
					<td>${b.branchId}</td>
					<td>${b.branchName}</td>
					<td>${b.branchLocation}</td>
					<td>${b.branchDate}</td>
					<td>${b.branchPhone}</td>
					<td>${b.branchState}</td>
					<td><a
						href="/LifeInsuranceNew/ceo/updateBranch?id=${b.branchId}"
						class="btn btn-success">Update</a></td>
					<td><a
						href="/LifeInsuranceNew/ceo/deleteteBranch?id=${b.branchId}"
						class="btn btn-danger">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>

	<c:if test="${pdata!=null}">

		<h2>Policy Details Are :</h2>
		<table class="table table-stripped">
			<tr>
				<th>policyId</th>
				<th>policyName</th>
				<th>policyLocation</th>
				<th>policyDate</th>
				<th>policyPhone</th>
				<th>policyState</th>
				<th>Update Policy</th>
				<th>Delete Policy</th>
			</tr>
			<c:forEach items="${pdata}" var="b">
				<tr>
					<td>${p.policyId}</td>
					<td>${p.policyName}</td>
					<td>${p.policyLocation}</td>
					<td>${p.policyDate}</td>
					<td>${p.policyPhone}</td>
					<td>${p.policyState}</td>
					<td><a
						href="/LifeInsuranceNew/ceo/updatePolicy?id=${p.policyId}"
						class="btn btn-success">Update</a></td>
					<td><a
						href="/LifeInsuranceNew/ceo/deletetePolicy?id=${p.policyId}"
						class="btn btn-danger">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	


</body>
</html>
