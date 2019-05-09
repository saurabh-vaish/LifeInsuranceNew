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
				<h1 class="card-title text-white text-bold mt-4">Manager Details</h1> 
			</div>


		 	<!-- Content -->
			<div class="card-body">
				
				<!-- Quotation -->
			
		<table class="table table-striped table-bordered table-hover text-center ">
	
				<tr>
					<th>Manager Id</th>
					<th>${manager.mgrId}</th>
				</tr>
				<tr>
					<th>Manager Name</th>
					<th>${manager.mgrName}</th>
				</tr>
				<tr>
					<th>Father's Name</th>
					<th>${manager.mgrFname}</th>
				</tr>
				<tr>
					<th>Gender</th>
					<th>
						<c:if test="${manager.mgrGen eq 'M'}">Male</c:if>
						<c:if test="${manager.mgrGen eq 'F'}">Female</c:if>
					</th>
				</tr>
				<tr>
					<th>Age</th>
					<th>${manager.mgrAge}</th>
				</tr>
				<tr>
					<th>Qualification</th>
					<th>${manager.mgrQual}</th>
				</tr>
				<tr>
					<th>Address</th>
					<th>${manager.mgrAddress}</th>
				</tr>
				<tr>
					<th>Join Date</th>
					<th>${manager.mgrJoinDate}</th>
				</tr>
				<tr>
					<th>Contact</th>
					<th>${manager.mgrPhone}</th>
				</tr>
				 <tr >
					<th>Branch Name</th>
					<th>${manager.mgrBranchName}</th>
				</tr> 
				
				<tr>
					<th>Branch Details</th>
					<th>
						<button type="button"  class="btn btn-info  btn-rounded" data-toggle="modal" data-target="#viewBranch">View</button> 
					</th>
				</tr> 
			
			</table>
			</div>
			<div class="card-footer">
				<div class="row">
					<div class="col-6">
						<button type="button"  class="btn btn-success btn-lg btn-block btn-rounded" data-toggle="modal" data-target="#editprofile">Edit Manager</button> 
					</div>
					<div class="col-6">
						<button type="button" class="btn btn-danger btn-lg btn-block btn-rounded" data-toggle="modal" data-target="#deleteBranch">Delete Manager</button> 
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
<div class="modal fade right" id="viewBranch" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true" data-backdrop="false">
  <div class="modal-dialog modal-full-height modal-right modal-notify modal-info" role="document">
    <div class="modal-content">
      <!--Header-->
      <div class="modal-header">
        <p class="heading lead">Branch Details
        </p>

        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true" class="white-text">×</span>
        </button>
      </div>

      <!--Body-->
      <div class="modal-body">
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
			
			</table> 

      </div>

      <!--Footer-->
      <div class="modal-footer justify-content-center">
        <a type="button" href="branchDetails?bid=${branch.branchId}" class="btn btn-primary waves-effect waves-light">Know More
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
			
			
			<form:form action="update"  method="post" modelAttribute="manager" class="needs-validation" enctype="multipart/form-data"> 
						
						<div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i>
								<form:input   class="form-control validate readOnly" path="mgrId" required="true" />
								<label data-error="wrong" data-success="right" for="mgrId">manager Id</label>
							</div>
	
							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input  class="form-control validate" path="mgrName" required="true"/>
								<label data-error="wrong" data-success="right" for="mgrName">manager Name</label>
							</div>
							<div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i> 
								<form:input  class="form-control validate" path="mgrFname" required="true"/>
								 <label data-error="wrong" data-success="right" for="mgrFname">manager Father's Name</label>
							</div>

							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input class="form-control validate" path="mgrAge" required="true"/>
								<label data-error="wrong" data-success="right" for="mgrAge">manager Age</label>
							</div>
							<div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i> 
								<form:input  class="form-control validate" path="mgrGen" required="true" />
								 <label data-error="wrong" data-success="right" for="mgrGen">manager Gender</label>
							</div>

							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input  class="form-control validate" path="mgrQual" required="true"/>
								<label data-error="wrong" data-success="right" for="mgrQual">manager Qualification</label>
							</div>
							 <div class="md-form mb-5">
								<i class="fas fa-user prefix grey-text"></i>
								 <form:select path="mgrBranchName" class="mdb-select md-form colorful-select dropdown-secondary ml-5">
								 	<form:option value="">--Select Branch--</form:option>
								 	<c:forEach items="${listbranch}" var="ob">
								 		<form:option value="${ob}">${ob}</form:option>
								 	</c:forEach>
								 </form:select>
								 <label data-error="wrong" data-success="right" for="mgrBranchName">Branch Name</label>
							</div> 

							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i>
								 <form:input  class="form-control validate" path="mgrAddress" required="true"/>
								<label data-error="wrong" data-success="right" for="mgrAddress">manager Address</label>
							</div>
							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input  class="form-control datepicker validate " path="mgrJoinDate" required="true"/>
								<label data-error="wrong" data-success="right" for="mgrJoinDate">manager Join Date</label>
							</div>
							<div class="md-form">
								<i class="fas fa-envelope prefix grey-text"></i> 
								<form:input  class="form-control  validate" path="mgrPhone" required="true" />
								<label data-error="wrong" data-success="right" for="mgrPhone">Contact</label>
							</div>
							<div class="md-form">
								      <input type="file" name="mfile" required="true">
<!-- 								 <div class="file-field">
								    <a class="btn-floating purple-gradient mt-0 float-left">
								      <i class="fas fa-cloud-upload-alt" aria-hidden="true"></i>
								      <input type="file" id="managerPic" name="managerPic" required="true">
								    </a>
								    <div class="file-path-wrapper">
								      <input class="file-path validate" type="text" placeholder="manager picture">
								    </div>
								 </div> 
 -->						</div>
					
						<!--Footer-->
						<div class="modal-footer justify-content-center">
							<button type="submit" class="btn purple-gradient btn-lg btn-block btn-rounded wave-effect" >Register
								<i class="fas fa-paper-plane"></i>
							</button>
						</div> 
				</form:form>
			
			
						
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
				        <p class="heading lead">Delete Manager</p>
				
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
				        <a type="button" href="managerDel?mid=${manager.mgrId }" class="btn btn-danger">Delete </a>
				        <a type="button" class="btn btn-outline-danger waves-effect" data-dismiss="modal">Cancel</a>
				      </div>
				    </div>
				    <!--/.Content-->
				  </div>
				</div>
				<!-- Central Modal Medium Danger-->



	</div>
	
					<h5> ${param} param</h5>
					<h5> ${param.bid} bid</h5>
					<h5> ${param.msg}  msg</h5>
	
					<c:if test="${param.msg ne null}">
							<div class="card card-footer bg-success">
								<h5> ${param.msg} </h5>
							</div>
						</c:if>

	

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