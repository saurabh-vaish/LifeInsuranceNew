<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
				<div class="row">
					<div class="col-6">
						<button type="button" href="" class="btn btn-info btn-lg btn-block btn-rounded" data-toggle="modal" data-target="#editprofile">Edit Agent</button> 
					</div>
					<div class="col-6">
						<button type="button" href="" class="btn btn-danger btn-lg btn-block btn-rounded" data-toggle="modal" data-target="#deleteAgent">Delete Agent</button> 
					</div>
				</div>
			</div>

		</div>
		<!-- Card -->

	<style>
		.readOnly{
			background-color: #d3d3d3 !important; 
		}
	</style>


		<!-- Edit Modal -->
		
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
								
								<form:input  id="form1" class="form-control validate readOnly" path="agentId" readonly="true"/>
								<label data-error="wrong" data-success="right" for="form1">agent Id</label>
							</div>

							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input  id="form2" class="form-control validate" path="agentName" />
								<label data-error="wrong" data-success="right" for="form2">agent Name</label>
							</div>
							<div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i> 
								<form:input  id="form3" class="form-control validate" path="agentfName" />
								 <label data-error="wrong" data-success="right" for="form3">agent Father's Name</label>
							</div>

							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input id="form4" class="form-control validate" path="agentAge" />
								<label data-error="wrong" data-success="right" for="form4">agent Age</label>
							</div>
							<div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i> 
								<form:input  id="form5" class="form-control validate readOnly" path="agentGen" readOnly="true" />
								 <label data-error="wrong" data-success="right" for="form5">agent Gender</label>
							</div>

							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input id="form6" class="form-control validate" path="agentQual" />
								<label data-error="wrong" data-success="right" for="form6">agent Qualifaication</label>
							</div>
							<div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i>
								 <form:input  id="form7" class="form-control validate" path="agentOccu" />
								  <label data-error="wrong" data-success="right" for="form7">Other Occupation</label>
							</div>

							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i>
								 <form:input id="form8" class="form-control validate" path="agentAdd" />
								<label data-error="wrong" data-success="right" for="form8">agent Address</label>
							</div>
							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input id="form9" class="form-control validate readOnly" path="agentReg" readOnly="true" />
								<label data-error="wrong" data-success="right" for="form9">agent Regsitration Date</label>
							</div>
							<div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i>
								 <form:input  id="form10" class="form-control validate readOnly" path="agentBranch" readOnly="true"   />
								  <label data-error="wrong" data-success="right" for="form10">Branch Manager Id</label>
							</div>

							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i>
								 <form:input id="form11" class="form-control validate readOnly" path="agentTotal" readOnly="true"  />
								<label data-error="wrong" data-success="right" for="form11">Total Policies</label>
							</div>
							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input id="form12" class="form-control validate" path="agentPhone"  />
								<label data-error="wrong" data-success="right" for="form12">Contact</label>
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


		<!-- Delete -->
		
				<div class="modal fade" id="deleteAgent" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
				  aria-hidden="true">
				  <div class="modal-dialog modal-notify modal-danger" role="document">
				    <!--Content-->
				    <div class="modal-content">
				      <!--Header-->
				      <div class="modal-header">
				        <p class="heading lead">Delete Agent</p>
				
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true" class="white-text">&times;</span>
				        </button>
				      </div>
				
				      <!--Body-->
				      <div class="modal-body">
				        <div class="text-center">
				          <i class="fas fa-check fa-4x mb-3 animated rotateIn"></i>
				          <p>
				          		Are you sure to delete agent 
				          </p>
				        </div>
				      </div>
				
				      <!--Footer-->
				      <div class="modal-footer justify-content-center">
				        <a type="button" href="deleteAgent?aid=${agent.agentId }" class="btn btn-danger">Delete <i class="far fa-user-times ml-1 text-white"></i></a>
				        <a type="button" class="btn btn-outline-danger waves-effect" data-dismiss="modal">Cancel</a>
				      </div>
				    </div>
				    <!--/.Content-->
				  </div>
				</div>
				<!-- Central Modal Medium Danger-->



	</div>

${msg }


</div>


</main>

<br>

<%@ include file="h&f/managerFooter.jsp"%>