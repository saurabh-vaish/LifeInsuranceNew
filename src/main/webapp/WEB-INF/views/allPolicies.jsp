<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="h&f/customerHeader.jsp"%>


<main style="margin-left: 10% !important;margin-right: 10% !important;">

<div class="row">
	<div class="col-sm-12 col-md-12">

		<!-- Card Wider -->
				<div class="card card-cascade ">

					<!-- Card image -->
					<div class="view view-cascade gradient-card-header blue-gradient">

						<!-- Title -->
						<h2 class="card-header-title mb-3">POLICIES</h2>

					</div>
				</div>

		<div class="row">
		
	<c:forEach items="${policy}" var="poly">
		
		<div class="col-4">
				<!-- Card Regular -->
			<div class="card card-cascade mt-5">
				<!-- Card image -->
				<div class="view view-cascade overlay">
					<img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Others/men.jpg" alt="Card image cap"> 
					<div class="mask rgba-white-slight"></div>
				</div>
				
				<!-- Card content -->
				<div class="card-body card-body-cascade text-center ">
					<!-- Title -->
					<h4 class="card-title">
						
						<strong>${poly.policyName}</strong>
						
						<!-- Social shares button -->
						<a class="activator waves-effect waves-light mr-4">
							<i class="fas fa-share-alt"></i>
						</a>
					</h4>
					<!-- Subtitle -->
					<h6 class="font-weight-bold indigo-text py-2">${poly.policyDate}</h6>
					<!-- Text -->
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Voluptatibus, ex, recusandae. Facere modi
									sunt, quod quibusdam.
					</p>
	
					<div class="card-footer">
						<a href="showPolicy?pid=${poly.policyId}" class="btn purple-gradient btn-lg btn-block btn-rounded">Know More</a>
					</div>
				</div>

			</div>
		<!-- Card Regular -->
		</div>
</c:forEach>

		</div>

	</div>

</div>


</main>

<br>

<%@ include file="h&f/customerFooter.jsp"%>