<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="h&f/managerHeader.jsp"%>

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
				<h4 class="card-title">${manager.mgrId}</h4>
				<hr>
				<!-- Quotation -->
				<p>
				<div class="row">
					<div class="col-6">Name</div>
					<div class="col-6">${manager.mgrName}</div>
				</div>
				<div class="row">
					<div class="col-6">Father Name</div>
					<div class="col-6">${manager.mgrFname}</div>
				</div>
				<div class="row">
					<div class="col-6">Age</div>
					<div class="col-6">${manager.mgrAge}</div>
				</div>
				<div class="row">
					<div class="col-6">Gender</div>
					<div class="col-6">${manager.mgrGen}</div>
				</div>
				<div class="row">
					<div class="col-6">Qualification</div>
					<div class="col-6">${manager.mgrQual}</div>
				</div>
				<div class="row">
					<div class="col-6">Address</div>
					<div class="col-6">${manager.mgrAddress}</div>
				</div>
				<div class="row">
					<div class="col-6">Branch Name</div>
					<div class="col-6">${manager.mgrBranchName}</div>
				</div>
				<div class="row">
					<div class="col-6">Join Date</div>
					<div class="col-6">${manager.mgrJoinDate}</div>
				</div>
				<div class="row">
					<div class="col-6">Contact</div>
					<div class="col-6">${manager.mgrPhone}</div>
				</div>
			
			</div>
			<div class="card-footer">
				<button type="button" href="" class="btn purple-gradient btn-lg btn-block btn-rounded" data-toggle="modal" data-target="#editprofile">Edit</button> 
			
			</div>

		</div>
		<!-- Card -->

	<style>
		.readOnly{
			background-color: #d3d3d3 !important; 
		}
	</style>


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
					
					<form:form action="update" method="post" modelAttribute="manager"> 
						<!--Body-->
				
						<div class="modal-body">
							<div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i>
								
								<form:input  id="form1" class="form-control validate readOnly" path="mgrId" readonly="true"/>
								<label data-error="wrong" data-success="right" for="form1">manager Id</label>
							</div>

							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input  id="form2" class="form-control validate" path="mgrName" />
								<label data-error="wrong" data-success="right" for="form2">manager Name</label>
							</div>
							<div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i> 
								<form:input  id="form3" class="form-control validate" path="mgrFname" />
								 <label data-error="wrong" data-success="right" for="form3">manager Father's Name</label>
							</div>

							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input id="form4" class="form-control validate" path="mgrAge" />
								<label data-error="wrong" data-success="right" for="form4">manager Age</label>
							</div>
							<div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i> 
								<form:input  id="form5" class="form-control validate readOnly" path="mgrGen" readOnly="true" />
								 <label data-error="wrong" data-success="right" for="form5">manager Gender</label>
							</div>

							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input id="form6" class="form-control validate" path="mgrQual" />
								<label data-error="wrong" data-success="right" for="form6">manager Qualification</label>
							</div>
							<div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i>
								 <form:input  id="form7" class="form-control validate" path="mgrBranchName" />
								  <label data-error="wrong" data-success="right" for="form7">Branch Name</label>
							</div>

							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i>
								 <form:input id="form8" class="form-control validate" path="mgrAddress" />
								<label data-error="wrong" data-success="right" for="form8">manager Address</label>
							</div>
							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input id="form9" class="form-control validate readOnly" path="mgrJoinDate" readOnly="true" />
								<label data-error="wrong" data-success="right" for="form9">manager Join Date</label>
							</div>
							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input id="form12" class="form-control validate" path="mgrPhone"  />
								<label data-error="wrong" data-success="right" for="form12">Contact</label>
							</div>
						</div>
				
				
					
						<!--Footer-->
						<div class="modal-footer justify-content-center">
							<input type="submit" class="btn btn-outline-warning waves-effect" />Update
								<i class="fas fa-paper-plane-o ml-1"></i>
						
						</div>
						</form:form>
				</div>
				<!--/.Content-->
				
				
				
			</div>
		</div>


		<!-- Modal end --> 



	</div>

${msg }


</div>


</main>

<br>

<%@ include file="h&f/managerFooter.jsp"%>