<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="h&f/customerHeader.jsp"%>
<%@page import="java.util.*" %>


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<main style="margin-left: 10% !important;margin-right: 10% !important;">

<div class="container">
	<div class="row">
		<div class="col-sm-12 col-md-12">

 
<c:if test="${empty agent}">
	<c:out value="NO DATA FOUND"></c:out>
</c:if>

<c:if test="${!empty agent }">

			<!-- Card Wider -->
			<div class="card card-cascade">


				<!-- Grid column -->
				<div class="col-xl-12 col-lg-12 mb-5 mt-5 d-md-flex justify-content-between">
					<div class="avatar mb-md-0 mb-4 mx-4 col-xs-12 col-sm-4">
						<img
							src="https://mdbootstrap.com/img/Photos/Avatars/img%20(32).jpg"
							class="rounded z-depth-1" alt="Sample avatar">
					</div>
					 <div class="mx-8 col-xs-12 col-sm-8">
						<h4 class="font-weight-bold mb-3">${agent.agentName}</h4>
						<h6 class="font-weight-bold grey-text mb-3">Branch : ${agent.agentBranch}</h6>
						<p class="grey-text">Age : ${agent.agentBranch} </p>
						<p class="grey-text">Contact : ${agent.agentPhone}</p>
						<p class="grey-text">Address : ${agent.agentAdd}</p>
						<!-- Facebook-->
						<a class="p-2 fa-lg fb-ic"> <i class="fab fa-facebook-f">
						</i>
						</a>
						<!-- Twitter -->
						<a class="p-2 fa-lg tw-ic"> <i class="fab fa-twitter"> </i>
						</a>
						<!--Dribbble -->
						<a class="p-2 fa-lg dribbble-ic"> <i class="fab fa-dribbble">
						</i>
						</a>
					</div> 
				</div>
				<!-- Grid column -->


			</div>
			<br/>
</c:if> 
		</div>
	</div>
</div>
</main>

<br>

<%@ include file="h&f/customerFooter.jsp"%>