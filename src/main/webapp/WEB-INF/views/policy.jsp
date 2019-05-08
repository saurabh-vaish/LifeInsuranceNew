<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core"%>

<c1:choose>
	<c1:when test="${msg=='agent'}">
		<%@ include file="h&f/agentHeader.jsp"%>
	</c1:when>
	<c1:otherwise>
		<%@ include file="h&f/customerHeader.jsp"%>
	</c1:otherwise>
</c1:choose>


<main style="margin-left: 10% !important;margin-right: 10% !important;">

<div class="row">
	<div class="col-sm-12 col-md-12">


		<!-- Card -->
		<div class="card card-cascade">

			<!-- Card image -->
			<div class="view view-cascade gradient-card-header purple-gradient">

				<!-- Title -->
				<h2 class="card-header-title mb-3">${policy.policyName }</h2>
				<!-- Subtitle -->

			</div>

			<!-- Card content -->
			<div class="card-body card-body-cascade text-center">

				<!-- Text -->
				<p class="card-text">Lorem ipsum dolor sit amet, consectetur
					adipisicing elit. Voluptatibus, ex, recusandae. Facere modi sunt,
					quod quibusdam dignissimos neque rem nihil ratione est placeat vel,
					natus non quos laudantium veritatis sequi.Ut enim ad minima veniam,
					quis nostrum exercitationem ullam corporis suscipit laboriosam.</p>

				<div class="card-body">
					<!-- Name -->

					<!-- Quotation -->
					<p>
					<div class="row">
						<div class="col-6">Policy Name</div>
						<div class="col-6">${policy.policyName }</div>
					</div>
					<div class="row">
						<div class="col-6">Policy Amount</div>
						<div class="col-6">${policy.policyAmt }</div>
					</div>
					<div class="row">
						<div class="col-6">Policy Ace Amount</div>
						<div class="col-6">${policy.policyFcAmt }</div>
					</div>
					<div class="row">
						<div class="col-6">Policy Term</div>
						<div class="col-6">${policy.policyTerm }</div>
					</div>
					<div class="row">
						<div class="col-6">Policy Interest</div>
						<div class="col-6">${policy.policyInterest }</div>
					</div>
					<div class="row">
						<div class="col-6">Policy Date</div>
						<div class="col-6">${policy.policyDate }</div>
					</div>
					<div class="row">
						<div class="col-6">Policy Max Time</div>
						<div class="col-6">${policy.policyMax }</div>
					</div>


				</div>

			<c:if test="${msg eq null }">
				<div class="card-footer">
					<c:choose>
						<c:when test="${param['flag'] ne null}">
							<button class="btn btn-success btn-lg btn-block btn-rounded">Applied</button>
						</c:when>
						<c:otherwise>
							<a href="request?pid=${policy.policyId}" class="btn purple-gradient btn-lg btn-block btn-rounded">Apply</a>
						</c:otherwise>
					</c:choose>
				
				</div>
			</c:if>

			</div>

		</div>
		<!-- Card -->


		<!--  Rest Policies -->


		<c:set var="size" value="${list.size()}" />

		<div id="carousel-example-multi"
			class="carousel slide carousel-multi-item v-2" data-ride="carousel">

			<!--Controls-->
			<div class="controls-top">
				<a class="btn-floating" href="#carousel-example-multi"
					data-slide="prev"><i class="fas fa-chevron-left"></i></a> <a
					class="btn-floating" href="#carousel-example-multi"
					data-slide="next"><i class="fas fa-chevron-right"></i></a>
			</div>
			<!--/.Controls-->

			<!-- Indicators -->
			<ol class="carousel-indicators">
				<c:forEach begin="0" end="${size-1}" var="i">
					<li data-target="#carousel-example-multi" data-slide-to="${i}"
						<c:if test="${i==0}"> class="active" </c:if>></li>
				</c:forEach>
			</ol>
			<!--/.Indicators-->

			<div class="carousel-inner" role="listbox">

				<c:forEach items="${list}" var="poly" varStatus="loop">

					<div
						class="carousel-item <c:if test="${loop.index==0}">active </c:if>">
						<div class="col-12 col-md-4">
							<div class="card mb-2">
								<img class="card-img-top"
									src="https://mdbootstrap.com/img/Photos/Others/img (36).jpg"
									alt="Card image cap">
								<div class="card-body">
									<h4 class="card-title font-weight-bold">${poly.policyName}</h4>
									<p class="card-text">Some quick example text to build on
										the card title and make up the bulk of the card's content.</p>
									<a class="btn btn-success btn-md btn-rounded"
										href="showPolicy?pid=${poly.policyId}">Know More</a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>

			</div>

		</div>



	</div>

</div>


</main>

<br>
<c1:choose>
	<c1:when test="${msg=='agent'}">
		<%@ include file="h&f/agentFooter.jsp"%>
	</c1:when>
	<c1:otherwise>
		<%@ include file="h&f/customerFooter.jsp"%>
	</c1:otherwise>
</c1:choose>
