<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="h&f/customerHeader.jsp"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<main style="margin-left: 10% !important;margin-right: 10% !important;">

<div class="row">
	<div class="col-sm-12 col-md-12">

		<div class="card">

			<h5 class="card-header purple-gradient white-text text-center py-4">
				<strong>Requst Policy</strong>
			</h5>

			<div class="card-body px-lg-5 pt-0">
			
			
					
			<!--  add customer -->
					<form:form action="saveRequest" method="post" modelAttribute="policyRequest" class="needs-validation" novalidate="true"> 
						
							<div class="md-form mb-5">
								<i class="fas fa-id-card prefix grey-text"></i>
								<label data-error="wrong" data-success="right" for="form1">Policy Id</label>
								<form:input  id="form1" class="form-control bg-warning" path="policyId" value="${policy.policyId }" readOnly="true"/>
							      <div class="invalid-feedback ml-5"> Please provide a valid id. </div>
							       <div class="valid-feedback ml-5"> Looks good! </div>
							</div>

							<div class="md-form mb-5">
								<i class="fas fa-user-alt prefix grey-text"></i> 
								<label data-error="wrong" data-success="right" for="form2">Policy Name</label>
								<form:input  id="form2" class="form-control bg-warning" path="policyName" value="${policy.policyName }" required="true"/>
								<div class="invalid-feedback ml-5"> Please provide a valid name. </div>
								<div class="valid-feedback ml-5"> Looks good! </div>
							</div>



					<div class="md-form mb-5">
						<i class="fas fa-user prefix grey-text"></i>
						 
						<form:select class="mdb-select md-form colorful-select dropdown-secondary ml-5" id="form4" path="agentId" searchable="Search here.." >
							<form:option value="" >Choose your agent</form:option>
							<c:forEach items="${agent}" var="agent">
								<form:option value="${agent.agentId}" data-icon="https://mdbootstrap.com/img/Photos/Avatars/avatar-1.jpg" class="rounded-circle">${agent.agentName}</form:option>
							</c:forEach>
						</form:select> 
						<label data-error="wrong" data-success="right" class="mdb-main-label" for="form6">Choose your Agent</label>
						<div class="invalid-feedback ml-5">This field can't be empty </div>
						<div class="valid-feedback ml-5">Looks good!</div>
					</div>

					<div class="md-form mb-5">
								<i class="fas fa-mercury prefix grey-text"></i> 
								<label data-error="wrong" data-success="right" for="form5">Amount</label>
								<form:input  id="form5" class="form-control " path="amount"  required="true"/> 
									<div class="invalid-feedback ml-5"> This field can't be empty </div>
									<div class="valid-feedback ml-5"> Looks good! </div>
							</div>


							<div class="md-form mb-5">
								<i class="fas fa-university prefix grey-text"></i>
								
								<form:select class="mdb-select md-form colorful-select dropdown-secondary ml-5" path="policyTerm" id="form4" >
									<form:option value="" disabled="true" selected="true">Choose your Term</form:option>
									<form:option value="ANNUALLY" >ANNUALLY</form:option>
									<form:option value="HALFYEARLY" >HALFYEARLY</form:option>
									<form:option value="MONTHLY" >MONTHLY</form:option>
									
								</form:select> 
								<label data-error="wrong" data-success="right" class="mdb-main-label" for="form6">Choose your Term</label>
									<div class="invalid-feedback ml-5"> This field can't be empty </div>
									<div class="valid-feedback ml-5"> Looks good! </div>
								</div>
								
							<div class="md-form mb-5">
								<i class="fas fa-briefcase prefix grey-text"></i>
								 <label data-error="wrong" data-success="right" for="form7">Policy Date</label>
								 <form:input  id="form7" class="form-control datepicker" path="policyDate" required="true"/> 
									<div class="invalid-feedback ml-5"> This field can't be empty </div>
									<div class="valid-feedback ml-5"> Looks good! </div>
							</div>


							<div class="md-form mb-5">
								<i class="fas fa-map-marker-alt prefix grey-text"></i>
								<label data-error="wrong" data-success="right" for="form8">Email</label>
								<form:input  id="form8" class="form-control" path="email" required="true"/>
									<div class="invalid-feedback ml-5"> This field can't be empty </div>
									<div class="valid-feedback ml-5"> Looks good! </div>
								</div>

							<div class="md-form mb-5">
								<i class="fas fa-calendar-check prefix grey-text"></i> 
								<label data-error="wrong" data-success="right" for="phone">Phone</label>
								<form:input id="phone" class="form-control " path="phone" required="true"/>
									<div class="invalid-feedback ml-5"> Please select a valid date </div>
							       <div class="valid-feedback ml-5"> Looks good! </div>
								</div>

							
						<!--Footer-->
						<div class="modal-footer justify-content-center">
							<button type="submit" class="btn purple-gradient btn-lg btn-block btn-rounded wave-effect">Submit
								<i class="fas fa-paper-plane"></i>
							</a>
						</div>
				</form:form>

			
		</div>

		<div class="card-footer bg-success py-2">${msg}</div>

	</div>

</div>


</main>

<br>

<%@ include file="h&f/customerFooter.jsp"%>

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
