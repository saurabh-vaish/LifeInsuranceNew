<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="h&f/customerHeader.jsp"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<main>

<div class="row">
	<div class="col-sm-12">

		<!-- Card -->
		<div class="card testimonial-card">

			<!-- Background color -->
			<div class="card-up indigo lighten-1"></div>

			<!-- Avatar -->
			<div class="avatar mx-auto white">
				<img
					src="https://mdbootstrap.com/img/Photos/Avatars/img%20%2810%29.jpg"
					class="rounded-circle" alt="woman avatar">
			</div>

			<!-- Content -->
			<div class="card-body">
				<!-- Name -->
				<h4 class="card-title">${customer.getCustName()}</h4>
				<hr>
				<!-- Quotation -->
				<p>
				<div class="row">
					<div class="col-6">Name</div>
					<div class="col-6">${customer.getCustName()}</div>
				</div>
				<div class="row">
					<div class="col-6">Father Name</div>
					<div class="col-6">${customer.getCustFname()}</div>
				</div>
				<div class="row">
					<div class="col-6">Age</div>
					<div class="col-6">${customer.getCustAge()}</div>
				</div>
				<div class="row">
					<div class="col-6">Sex</div>
					<div class="col-6">${customer.getCustSex()}</div>
				</div>
				<div class="row">
					<div class="col-6">Qualification</div>
					<div class="col-6">${customer.getCustQual()}</div>
				</div>
				<div class="row">
					<div class="col-6">Address</div>
					<div class="col-6">${customer.getCustAddress()}</div>
				</div>
				<div class="row">
					<div class="col-6">Occupation</div>
					<div class="col-6">${customer.getCustOccup()}</div>
				</div>
				<div class="row">
					<div class="col-6">Regsitration Date</div>
					<div class="col-6">${customer.getCustDate()}</div>
				</div>
				</p>
			</div>
			<div class="card-footer">
				<button type="button" href="" class="btn purple-gradient btn-lg btn-block btn-rounded" data-toggle="modal" data-target="#editprofile">Edit</button> 
			
			</div>

		</div>
		<!-- Card -->


		<!-- Modal -->
		<div class="modal fade" id="editprofile" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">

			<div class="modal-dialog modal-lg" role="document">
				<!--Content-->
				<div class="modal-content">
					<!--Header-->
					<div class="modal-header text-center  modal-notify purple-gradient">
						<h4 class="modal-title white-text w-100 font-weight-bold py-2">EDIT
							PROFILE</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true" class="white-text">&times;</span>
						</button>
					</div>
					
					<!--  edit profile -->
					<form:form action="edit" method="post" modelAttribute="customer"> 
						<!--Body-->
				
						<div class="modal-body">
							<div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i>
								<form:input  id="form1" class="form-control validate" path="custId" readonly="true"/>
								<label data-error="wrong" data-success="right" for="form1">Customer	Id</label>
							</div>

							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input  id="form2" class="form-control validate" path="custName" />
								<label data-error="wrong" data-success="right" for="form2">Customer Name</label>
							</div>
							<div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i> 
								<form:input 
									id="form3" class="form-control validate" path="custFname" /> <label
									data-error="wrong" data-success="right" for="form3">Customer
									Father's Name</label>
							</div>

							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input id="form4" class="form-control validate" path="custAge" />
								<label data-error="wrong" data-success="right" for="form4">Customer
									Age</label>
							</div>
							<div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i> 
								<form:input 
									id="form5" class="form-control validate" path="custSex" readOnly="true" /> <label
									data-error="wrong" data-success="right" for="form5">Customer
									Gender</label>
							</div>

							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> <form:input
									 id="form6" class="form-control validate" path="custQual" />
								<label data-error="wrong" data-success="right" for="form6">Customer
									Qualifaication</label>
							</div>
							<div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i>
								 <form:input 
									id="form7" class="form-control validate" path="custOccup" /> <label
									data-error="wrong" data-success="right" for="form7">Customer
									Occupation</label>
							</div>

							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> <form:input
									 id="form8" class="form-control validate" path="custAddress" />
								<label data-error="wrong" data-success="right" for="form8">Customer
									Address</label>
							</div>
							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input id="form9" class="form-control validate" path="custDate" readOnly="true" />
								<label data-error="wrong" data-success="right" for="form9">Customer
									Regsitration Date</label>
							</div>
						</div>
				
				
					
						<!--Footer-->
						<div class="modal-footer justify-content-center">
							<input type="submit" class="btn btn-outline-warning waves-effect">Send
								<i class="fas fa-paper-plane-o ml-1"></i>
							</a>
						</div>
						</form:form>
				</div>
				<!--/.Content-->
				
				
				
			</div>
		</div>


		<!-- Modal end -->



	</div>


</div>


</main>

<br>

<%@ include file="h&f/customerFooter.jsp"%>