<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="h&f/agentHeader.jsp"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<main>

<div class="row">
	<div class="col-sm-12">

	
		<!-- Card -->
		<div class="card card-cascade">

			<!-- Card image -->
			<div class="view view-cascade gradient-card-header purple-gradient">

				<!-- Title -->
				<h2 class="card-header-title mb-3">Add Customer</h2>
				<!-- Subtitle -->

			</div>

			<!-- Card content -->
			<div class="card-body card-body-cascade">
	

			<!--  add customer -->
					<form:form action="saveCust" method="post" modelAttribute="customer" class="needs-validation" novalidate="true"> 
						<!--Body-->
				
							<div class="md-form mb-5">
								<i class="fas fa-id-card prefix grey-text"></i>
								<label data-error="wrong" data-success="right" for="form1">Customer	Id</label>
								<form:input  id="form1" class="form-control " path="custId" required="true"/>
							      <div class="invalid-feedback ml-5"> Please provide a valid id. </div>
							       <div class="valid-feedback ml-5"> Looks good! </div>
							</div>

							<div class="md-form mb-5">
								<i class="fas fa-user-alt prefix grey-text"></i> 
								<label data-error="wrong" data-success="right" for="form2">Customer Name</label>
								<form:input  id="form2" class="form-control" path="custName" required="true"/>
								<div class="invalid-feedback ml-5"> Please provide a valid name. </div>
								<div class="valid-feedback ml-5"> Looks good! </div>
							</div>

							<div class="md-form mb-5">
								<i class="fas fa-user-alt prefix grey-text"></i> 
								<label data-error="wrong" data-success="right" for="form3">Customer Father's Name</label>
								<form:input id="form3" class="form-control" path="custFname" required="true"/> 
									<div class="invalid-feedback ml-5"> Please provide a valid name. </div>
									<div class="valid-feedback ml-5"> Looks good! </div>
							</div>

							<div class="md-form mb-5">
								<i class="fas fa-birthday-cake prefix grey-text"></i> 
								<label data-error="wrong" data-success="right" for="form4">Customer Age</label>
								<form:input id="form4" class="form-control" path="custAge" required="true" />
									<div class="invalid-feedback ml-5"> This field can't be empty </div>
									<div class="valid-feedback ml-5"> Looks good! </div>
								</div>

							<div class="md-form mb-5">
								<i class="fas fa-mercury prefix grey-text"></i> 
									<form:select class="mdb-select md-form colorful-select dropdown-secondary ml-5" path="custSex" required="true" id="form4" >
									<form:option value="" disabled="true" selected="true">Gender</form:option>
									<form:option value="M" >Male</form:option>
									<form:option value="F" >Female</form:option>
								</form:select> 
								<label data-error="wrong" data-success="right" class="mdb-main-label" for="form5">Gender</label>
									<div class="invalid-feedback ml-5"> This field can't be empty </div>
									<div class="valid-feedback ml-5"> Looks good! </div>
							</div>


							<div class="md-form mb-5">
								<i class="fas fa-university prefix grey-text"></i>
								<label data-error="wrong" data-success="right" for="form6">Customer Qualifaication</label>
								<form:input id="form6" class="form-control" path="custQual" required="true"/>
									<div class="invalid-feedback ml-5"> This field can't be empty </div>
									<div class="valid-feedback ml-5"> Looks good! </div>
								</div>
							<div class="md-form mb-5">
								<i class="fas fa-briefcase prefix grey-text"></i>
								 <form:input  id="form7" class="form-control" path="custOccup" required="true"/> 
								 <label data-error="wrong" data-success="right" for="form7">Customer Occupation</label>
									<div class="invalid-feedback ml-5"> This field can't be empty </div>
									<div class="valid-feedback ml-5"> Looks good! </div>
							</div>


							<div class="md-form mb-5">
								<i class="fas fa-map-marker-alt prefix grey-text"></i>
								<label data-error="wrong" data-success="right" for="form8">Customer	Address</label>
								<form:input  id="form8" class="form-control" path="custAddress" required="true"/>
									<div class="invalid-feedback ml-5"> This field can't be empty </div>
									<div class="valid-feedback ml-5"> Looks good! </div>
								</div>

							<div class="md-form mb-5">
								<i class="fas fa-calendar-check prefix grey-text"></i> 
								<label data-error="wrong" data-success="right" for="date">Customer 	Regsitration Date</label>
								<form:input id="date" class="form-control datepicker" path="custDate" required="true"/>
									<div class="invalid-feedback ml-5"> Please select a valid date </div>
							       <div class="valid-feedback ml-5"> Looks good! </div>
								</div>

							<div class="md-form mb-5">
								<i class="fas fa-phone prefix grey-text"></i> 
								<label data-error="wrong" data-success="right" for="form10">Customer 	Contact</label>
								<form:input id="form10" class="form-control " path="custPhone" required="true" />
						 <div class="invalid-feedback ml-5"> This field can't be empty </div>
							       <div class="valid-feedback ml-5"> Looks good! </div>
								</div>

							<div class="md-form mb-5">
								<i class="fas fa-id-badge prefix grey-text"></i> 
								<label data-error="wrong" data-success="right" for="form11">Agent Id	</label>
								<form:input id="form11" class="form-control " path="custAgentId" required="true"/>
							<div class="invalid-feedback ml-5"> This field can't be empty </div>
								<div class="valid-feedback ml-5"> Looks good! </div>
							</div>
						
						<div class="form-group">
							<div class="form-check pl-0">
								<input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
								<label class="form-check-label" for="invalidCheck2">
									Agree to terms and conditions
								</label>
								<div class="invalid-feedback ml-5">
									You must agree before submitting.
								</div>
							</div>
						</div>
					
						<!--Footer-->
						<div class="modal-footer justify-content-center">
							<button type="submit" class="btn purple-gradient btn-lg btn-block btn-rounded wave-effect">Submit
								<i class="fas fa-paper-plane"></i>
							</a>
						</div>
				</form:form>
			</div>
				<!--/.Content-->
				
		</div>
	</div>

</div>

</main>

<br>

<%@ include file="h&f/agentFooter.jsp"%>
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