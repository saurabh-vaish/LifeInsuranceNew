<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="h&f/CEOHeader.jsp"%>
<%@page import="java.util.*"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<main style="margin-left: 10% !important;margin-right: 10% !important;">


<style>
table.dataTable thead .sorting:after, table.dataTable thead .sorting:before,
	table.dataTable thead .sorting_asc:after, table.dataTable thead .sorting_asc:before,
	table.dataTable thead .sorting_asc_disabled:after, table.dataTable thead .sorting_asc_disabled:before,
	table.dataTable thead .sorting_desc:after, table.dataTable thead .sorting_desc:before,
	table.dataTable thead .sorting_desc_disabled:after, table.dataTable thead .sorting_desc_disabled:before
	{
	bottom: .5em;
}
</style>


<div class="container">
	<div class="row">
		<div class="col-sm-12 col-md-12">

			<!-- Card -->
		<div class="card card-cascade">

			<!-- Card image -->
			<div class="view view-cascade gradient-card-header purple-gradient">

				<!-- Title -->
				<h2 class="card-header-title mb-3">Add Branch</h2>
				<!-- Subtitle -->

			</div>

			<!-- Card content -->
			<div class="card-body card-body-cascade">

			<!--  add branch -->
<%-- 					<form:form action="branchReg" method="post" modelAttribute="branch" class="needs-validation" no-validation="true" > 
 --%>
					<form:form  method="post" modelAttribute="branch" class="needs-validation confirm_appointment" no-validation="true" > 
	
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
					
						<!--Footer-->
						<div class="modal-footer justify-content-center">
							<button type="submit" class="btn purple-gradient btn-lg btn-block btn-rounded wave-effect" >Register
								<i class="fas fa-paper-plane"></i>
							</button>
						</div> 
	
				</form:form> 
			</div>
				<!--/.Content-->
				
		</div>
			
			
			
			
			
			${msg}
			
			
		</div>
	</div>
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
