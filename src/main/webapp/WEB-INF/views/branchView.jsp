<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="h&f/CEOHeader.jsp"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<main>

<div class="row">
	<div class="col-sm-12">

		<!-- Card -->
		<div class="card testimonial-card">

			<!-- Background color -->
			<div class="card-up indigo lighten-1 text-center">
				<h1 class="card-title text-white text-bold mt-4">Branch Details</h1> 
			</div>



		 	<!-- Content -->
			<div class="card-body">
				
				<!-- Quotation -->
			
		<table class="table table-striped table-bordered table-hover text-center ">
				
				<tr>
					<th>Branch Id</th>
					<th>${branch.branchId}</th>
				</tr>
				<tr>
					<th>Branch Name</th>
					<th>${branch.branchName}</th>
				</tr>
				<tr>
					<th>Branch Location</th>
					<th>${branch.branchLocation}</th>
				</tr>
				<tr>
					<th>Branch State</th>
					<th>${branch.branchState}</th>
				</tr>
				<tr>
					<th>Branch Contact</th>
					<th>${branch.branchPhone}</th>
				</tr>
				<tr>
					<th>Registration Date</th>
					<th>${branch.branchDate}</th>
				</tr>
				 <tr >
					<th>Branch Manager Id</th>
					<th>${branch.manager.mgrId}</th>
				</tr> 
				
				 <tr >
					<th>Branch Manager Name</th>
					<th>${branch.manager.mgrName}</th>
				</tr> 
				
				<tr>
					<th>Manager Details</th>
					<th>
						<button type="button"  class="btn btn-info  btn-rounded" data-toggle="modal" data-target="#viewManager">View</button> 
					</th>
				</tr> 
			
			</table>
			</div>
			<div class="card-footer">
				<div class="row">
					<div class="col-6">
						<button type="button"  class="btn btn-success btn-lg btn-block btn-rounded" data-toggle="modal" data-target="#editprofile">Edit Branch</button> 
					</div>
					<div class="col-6">
						<button type="button" class="btn btn-danger btn-lg btn-block btn-rounded" data-toggle="modal" data-target="#deleteBranch">Delete Branch</button> 
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


			
			<!-- Modal: view manager -->
<div class="modal fade right" id="viewManager" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true" data-backdrop="false">
  <div class="modal-dialog modal-full-height modal-right modal-notify modal-info" role="document">
    <div class="modal-content">
      <!--Header-->
      <div class="modal-header">
        <p class="heading lead">Manager Details
        </p>

        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true" class="white-text">×</span>
        </button>
      </div>

      <!--Body-->
      <div class="modal-body">
        <table class="table table-striped table-bordered table-hover text-center ">
				
				<tr>
					<th> Id</th>
					<th>${branch.manager.mgrId}</th>
				</tr>
				<tr>
					<th> Name</th>
					<th>${branch.manager.mgrName}</th>
				</tr>
				<tr>
					<th>Age</th>
					<th>${branch.manager.mgrAge}</th>
				</tr>
				<tr>
					<th>Gender</th>
					<th>
						<c:if test="${branch.manager.mgrGen eq 'M'}">Male</c:if>
						<c:if test="${branch.manager.mgrGen eq 'F'}">Female</c:if>
					</th>
				</tr>
				<tr>
					<th>Address</th>
					<th>${branch.manager.mgrAddress}</th>
				</tr>
				<tr>
					<th>Join date</th>
					<th>${branch.manager.mgrJoinDate}</th>
				</tr>
				 <tr >
					<th>Contact</th>
					<th>${branch.manager.mgrPhone}</th>
				</tr> 
			
			</table>

      </div>

      <!--Footer-->
      <div class="modal-footer justify-content-center">
        <a type="button" href="mgrDetails?mid=${branch.manager.mgrId}" class="btn btn-primary waves-effect waves-light">Know More
        </a>
        <a type="button" class="btn btn-outline-primary waves-effect" data-dismiss="modal">Close</a>
      </div>
    </div>
  </div>
</div>
<!-- Modal: view manager -->




		<!-- Edit Modal -->
		
		<div class="modal fade" id="editprofile" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">

			<div class="modal-dialog modal-lg" role="document">
				<!--Content-->
				<div class="modal-content">
					<!--Header-->
					<div class="modal-header text-center  modal-notify purple-gradient">
						<h4 class="modal-title white-text w-100 font-weight-bold py-2">EDIT
							Branch</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true" class="white-text">&times;</span>
						</button>
					</div>
					
					<!--  edit profile -->
					
						<!--Body-->
				
			<div class="modal-body">
			
			
				<form:form action="branchUpdate" method="post" modelAttribute="branch" class="needs-validation" no-validation="true" > 
	
						<div class="md-form mb-5">
								<i class="fas fa-id-card prefix grey-text"></i>
								<label data-error="wrong" data-success="right" for="branchId">Branch Code</label>
								<form:input  class="form-control" path="branchId" required="true"/>
							      <div class="invalid-feedback ml-5"> Please provide a valid code. </div>
							       <div class="valid-feedback ml-5"> Looks good! </div>
							</div>

						<div class="md-form mb-5">
								<i class="fas fa-user-alt prefix grey-text"></i> 
								<label data-error="wrong" data-success="right" for="branchName">Branch Name</label>
								<form:input   class="form-control" path="branchName" required="true"/>
								<div class="invalid-feedback ml-5"> Please provide a valid name. </div>
								<div class="valid-feedback ml-5"> Looks good! </div>
							</div>

							
							<div class="md-form mb-5">
								<i class="fas fa-map-marker-alt prefix grey-text"></i>
								<label data-error="wrong" data-success="right" for="branchLocation">Branch Location</label>
								<form:textarea  class="form-control" path="branchLocation" required="true"/>
									<div class="invalid-feedback ml-5"> This field can't be empty </div>
									<div class="valid-feedback ml-5"> Looks good! </div>
							</div>
							
							<div class="md-form mb-5">
								<i class="fas fa-map-marker-alt prefix grey-text"></i>
								<label data-error="wrong" data-success="right" for="branchState">Branch State</label>
								<form:input  class="form-control" path="branchState" required="true"/>
									<div class="invalid-feedback ml-5"> This field can't be empty </div>
									<div class="valid-feedback ml-5"> Looks good! </div>
							</div>

							<div class="md-form mb-5">
								<i class="fas fa-calendar-check prefix grey-text"></i> 
								<label data-error="wrong" data-success="right" for="branchDate">Registration Date</label>
								<form:input  class="form-control" path="branchDate" required="true"/>
									<div class="invalid-feedback ml-5"> Please select a valid date </div>
							       <div class="valid-feedback ml-5"> Looks good! </div>
							</div>

							<div class="md-form mb-5">
								<i class="fas fa-phone prefix grey-text"></i> 
								<label data-error="wrong" data-success="right" for="branchPhone">Branch	Contact</label>
								<form:input  class="form-control " path="branchPhone" required="true" />
								 <div class="invalid-feedback ml-5"> This field can't be empty </div>
							       <div class="valid-feedback ml-5"> Looks good! </div>
							</div>
							
							
							
							  <div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i> 
									<form:select class="mdb-select md-form colorful-select dropdown-secondary ml-5" path="manager.mgrId"   >
									<form:option value="" disabled="true" selected="true">Select Manager</form:option>
									<form:options items="${listmgr}" itemLabel="mgrName" itemValue="mgrId"></form:options>
								</form:select> 
								<label data-error="wrong" data-success="right" class="mdb-main-label" for="manager.mgrId">Manager</label>
									<div class="invalid-feedback ml-5"> This field can't be empty </div>
									<div class="valid-feedback ml-5"> Looks good! </div>
							</div>  
					
						<!--Footer-->
						<div class="modal-footer justify-content-center">
							<button type="submit" class="btn purple-gradient btn-lg btn-block btn-rounded wave-effect" >Register
								<i class="fas fa-paper-plane"></i>
							</button>
						</div> 
	
				</form:form> 
			
			
			
			
			
			
			
			
			
			
			
							
							<!--  add branch -->
				<%-- 	<form:form action="branchUpdate" method="post" modelAttribute="branch" class="needs-validation"  > 
	
						<div class="md-form mb-5">
								<i class="fas fa-id-card prefix grey-text"></i>
								<label data-error="wrong" data-success="right" for="branchId">Branch Code</label>
								<form:input  class="form-control" path="branchId" required="true"  readonly="true"/>
							      <div class="invalid-feedback ml-5"> Please provide a valid code. </div>
							       <div class="valid-feedback ml-5"> Looks good! </div>
							</div>

						<div class="md-form mb-5">
								<i class="fas fa-user-alt prefix grey-text"></i> 
								<label data-error="wrong" data-success="right" for="branchName">Branch Name</label>
								<form:input   class="form-control" path="branchName" required="true"/>
								<div class="invalid-feedback ml-5"> Please provide a valid name. </div>
								<div class="valid-feedback ml-5"> Looks good! </div>
							</div>

							
							<div class="md-form mb-5">
								<i class="fas fa-map-marker-alt prefix grey-text"></i>
								<label data-error="wrong" data-success="right" for="branchLocation">Branch Location</label>
								<form:textarea  class="form-control" path="branchLocation" required="true"/>
									<div class="invalid-feedback ml-5"> This field can't be empty </div>
									<div class="valid-feedback ml-5"> Looks good! </div>
							</div>
							
							<div class="md-form mb-5">
								<i class="fas fa-map-marker-alt prefix grey-text"></i>
								<label data-error="wrong" data-success="right" for="branchState">Branch State</label>
								<form:input  class="form-control" path="branchState" required="true"/>
									<div class="invalid-feedback ml-5"> This field can't be empty </div>
									<div class="valid-feedback ml-5"> Looks good! </div>
							</div>

							<div class="md-form mb-5">
								<i class="fas fa-calendar-check prefix grey-text"></i> 
								<label data-error="wrong" data-success="right" for="branchDate">Registration Date</label>
								<form:input id="date" class="form-control datepicker" path="branchDate" required="true"/>
									<div class="invalid-feedback ml-5"> Please select a valid date </div>
							       <div class="valid-feedback ml-5"> Looks good! </div>
							</div>

							
							<div class="md-form mb-5">
								<i class="fas fa-phone prefix grey-text"></i> 
								<label data-error="wrong" data-success="right" for="branchPhone">Branch	Contact</label>
								<form:input  class="form-control " path="branchPhone" required="true" />
								 <div class="invalid-feedback ml-5"> This field can't be empty </div>
							       <div class="valid-feedback ml-5"> Looks good! </div>
							</div>
							
							
							  <div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i> 
									<form:select class="mdb-select md-form colorful-select dropdown-secondary ml-5" path="manager.mgrId" required="true"  >
									<form:option value="" disabled="true" selected="true">Select Manager</form:option>
									<form:options items="${listmgr}" itemLabel="mgrName" itemValue="mgrId"></form:options>
								</form:select> 
								<label data-error="wrong" data-success="right" class="mdb-main-label" for="manager.mgrId">Manager</label>
									<div class="invalid-feedback ml-5"> This field can't be empty </div>
									<div class="valid-feedback ml-5"> Looks good! </div>
							</div> 
				
					
							<button type="submit" class="btn purple-gradient btn-lg btn-block btn-rounded wave-effect" >Update</button>
						 <!--Footer-->
						<!-- <div class=" justify-content-center">
								<i class="fas fa-paper-plane"></i>
							</button>
						</div> -->  
						
						
					</form:form>  --%>
						
						
				</div>
						
				
			</div>
				<!--/.Content-->
				
			</div>
		</div>


		<!-- Modal end --> 


		<!-- Delete -->
		
				<div class="modal fade" id="deleteBranch" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
				  aria-hidden="true">
				  <div class="modal-dialog modal-notify modal-danger" role="document">
				    <!--Content-->
				    <div class="modal-content">
				      <!--Header-->
				      <div class="modal-header">
				        <p class="heading lead">Delete Branch</p>
				
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true" class="white-text">&times;</span>
				        </button>
				      </div>
				
				      <!--Body-->
				      <div class="modal-body">
				        <div class="text-center">
				         <i class="fas fa-times fa-4x animated rotateIn"></i>
				          <p>
				          		Are you sure to delete branch 
				          </p>
				        </div>
				      </div>
				
				      <!--Footer-->
				      <div class="modal-footer justify-content-center">
				        <a type="button" href="branchDel?bid=${branch.branchId }" class="btn btn-danger">Delete </a>
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

<%@ include file="h&f/CEOFooter.jsp"%>



<script>
	(function() {
		'use strict';
		window.addEventListener('load', function() {
			// Fetch all the forms we want to apply custom Bootstrap validation styles to
			var forms = document.getElementsByClassName('needs-validation');
			// Loop over them and prevent submission
			var validation = Array.prototype.filter.call(forms, function(form) {
				form.addEventListener('submit', function(event) {
					if (form.checkValidity() === false) {
						event.preventDefault();
						event.stopPropagation();
					}
					form.classList.add('was-validated');
				}, false);
			});
		}, false);
	})();

	$(document).ready(function() {
		$('.datepicker').pickadate();
		$('.datepicker').removeAttr('readonly');
	});
</script>


<script>
(function() {
	'use strict';
	window.addEventListener('load', function() {
	// Fetch all the forms we want to apply custom Bootstrap validation styles to
	var forms = document.getElementsByClassName('needs-validation');
	// Loop over them and prevent submission
	var validation = Array.prototype.filter.call(forms, function(form) {
	form.addEventListener('submit', function(event) {
	if (form.checkValidity() === false) {
	event.preventDefault();
	event.stopPropagation();
	}
	form.classList.add('was-validated');
	}, false);
	});
	}, false);
	})();

	$(document).ready(function() {
	$('.mdb-select').materialSelect();
	$('.mdb-select.select-wrapper .select-dropdown').val("").removeAttr('readonly').prop('required', true).addClass('form-control').css('background-color', '#fff');
	});

</script>


<script>

$('.confirm_appointment').submit(function(e) {
    
    e.preventDefault();
    
    // $(this).serialize(); will be the serialized form
    $(this).append($(this).serialize() + '<br />');
});

</script>