<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="h&f/agentHeader.jsp"%>

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
				<h4 class="card-title">${agent.getAgentName()}</h4>
				<hr>
				<!-- Quotation -->
				<p>
				<div class="row">
					<div class="col-6">Name</div>
					<div class="col-6">${agent.agentName}</div>
				</div>
				<div class="row">
					<div class="col-6">Father Name</div>
					<div class="col-6">${agent.getAgentfName()}</div>
				</div>
				<div class="row">
					<div class="col-6">Age</div>
					<div class="col-6">${agent.getAgentAge()}</div>
				</div>
				<div class="row">
					<div class="col-6">Gender</div>
					<div class="col-6">${agent.getAgentGen()}</div>
				</div>
				<div class="row">
					<div class="col-6">Qualification</div>
					<div class="col-6">${agent.getAgentQual()}</div>
				</div>
				<div class="row">
					<div class="col-6">Address</div>
					<div class="col-6">${agent.getAgentAdd()}</div>
				</div>
				<div class="row">
					<div class="col-6">Other Occupation</div>
					<div class="col-6">${agent.getAgentOccu()}</div>
				</div>
				<div class="row">
					<div class="col-6">Regsitration Date</div>
					<div class="col-6">${agent.getAgentReg()}</div>
				</div>
				<div class="row">
					<div class="col-6">Branch Manager Id</div>
					<div class="col-6">${agent.agentBranch}</div>
				</div>
				<div class="row">
					<div class="col-6">Total Policies</div>
					<div class="col-6">${agent.agentTotal}</div>
				</div>
				<div class="row">
					<div class="col-6">Contact</div>
					<div class="col-6">${agent.agentPhone}</div>
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
					
					<form:form action="edit" method="post" modelAttribute="agent"> 
					
						<!--Body-->
				
						<div class="modal-body">
							<div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i>
								
								<form:input  class="form-control validate readOnly" path="agentId" readonly="true"/>
								<label data-error="wrong" data-success="right" for="agentId">agent Id</label>
							</div>

							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input  class="form-control validate" path="agentName" />
								<label data-error="wrong" data-success="right" for="agentName">agent Name</label>
							</div>
							<div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i> 
								<form:input   class="form-control validate" path="agentfName" />
								 <label data-error="wrong" data-success="right" for="agentfName">agent Father's Name</label>
							</div>

							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input  class="form-control validate" path="agentAge" />
								<label data-error="wrong" data-success="right" for="agentAge">agent Age</label>
							</div>
							<div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i> 
								<form:input  class="form-control validate readOnly" path="agentGen" readOnly="true" />
								 <label data-error="wrong" data-success="right" for="agentGen">agent Gender</label>
							</div>

							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input  class="form-control validate" path="agentQual" />
								<label data-error="wrong" data-success="right" for="agentQual">agent Qualifaication</label>
							</div>
							<div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i>
								 <form:input   class="form-control validate" path="agentOccu" />
								  <label data-error="wrong" data-success="right" for="agentOccu">Other Occupation</label>
							</div>

							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i>
								 <form:input  class="form-control validate" path="agentAdd" />
								<label data-error="wrong" data-success="right" for="agentAdd">agent Address</label>
							</div>
							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input  class="form-control validate readOnly" path="agentReg" readOnly="true" />
								<label data-error="wrong" data-success="right" for="agentReg">agent Regsitration Date</label>
							</div>
							<div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i>
								 <form:input   class="form-control validate readOnly" path="agentBranch" readOnly="true"   />
								  <label data-error="wrong" data-success="right" for="agentBranch">Branch Manager Id</label>
							</div>

							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i>
								 <form:input  class="form-control validate readOnly" path="agentTotal" readOnly="true"  />
								<label data-error="wrong" data-success="right" for="agentTotal">Total Policies</label>
							</div>
							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input class="form-control validate" path="agentPhone"  />
								<label data-error="wrong" data-success="right" for="agentPhone">Contact</label>
							</div>
						</div>
				
				
					
						<!--Footer-->
						<div class="modal-footer justify-content-center">
							<input type="submit" class="btn btn-outline-warning waves-effect">Update
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

<%@ include file="h&f/agentFooter.jsp"%>