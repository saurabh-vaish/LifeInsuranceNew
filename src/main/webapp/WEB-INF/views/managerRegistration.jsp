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
				<h2 class="card-header-title mb-3">Add Manager</h2>
				<!-- Subtitle -->

			</div>

			<!-- Card content -->
			<div class="card-body card-body-cascade">

			<!--  add Manager -->
	
			<form:form action="save"  method="post" modelAttribute="manager" class="needs-validation" novalidation="true"> 
						
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
					
						<!--Footer-->
						<div class="card-footer justify-content-center">
							<input type="submit" class="btn btn-outline-warning waves-effect" />Submit
								<i class="fas fa-paper-plane-o ml-1"></i>
						
						</div>
						</form:form>
				</div>
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
