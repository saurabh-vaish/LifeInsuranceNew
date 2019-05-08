<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="h&f/agentHeader.jsp"%>
<%@page import="java.util.*"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div style="margin-top: 6% !important">

<div class="container-fluid">
	<div class="row">
		<!-- Grid column -->
		<div class="col-xl-12 col-lg-12 mb-5 mt-5 d-md-flex ">
			<div class="avatar mb-md-0 mb-4  col-xs-12 col-sm-3">
				<img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(32).jpg" class="rounded z-depth-1" alt="Sample avatar">
			</div>
			<div class="mx-8 col-xs-12 col-sm-9 ">
				<div class="card text-center">
					<div class="card-header purple-gradient">
						Requested Policy Details
					</div>
				<div class="card card-body" >
					
					 <!--Accordion wrapper-->
						<div class="accordion md-accordion accordion-1" id="accordionEx23" role="tablist">
						  <div class="card">
						        <a class="white-text font-weight-bold" data-toggle="collapse" href="#collapse96" aria-expanded="true"
						          aria-controls="collapse96">
						    <div class="card-header blue lighten-3 z-depth-1" role="tab" id="heading96">
						      <h5 class="text-uppercase mb-0 py-1">
						         Requested Policy Details
						      </h5>
						    </div>
						        </a>
						    <div id="collapse96" class="collapse show" role="tabpanel" aria-labelledby="heading96"
						      data-parent="#accordionEx23">
						      <div class="card-body">
						        <div class="card">
								<div class="card-header card-primary">
									<h4 class="font-weight-bold mb-3">Policy Name :${policy.policyName.toUpperCase()}</h4>
								</div>
								<div class="card-body">
									<h5 class="font-weight-bold mb-3">Policy Id :${policy.policyId}</h5>
									<p class="font-weight-bold grey-text">Customer Id : ${customer.custId} </p>
									<p class="font-weight-bold grey-text">Customer Name : ${customer.custName} </p>
									<p class="font-weight-bold grey-text">Policy Amount : ${policy.amount} </p>
									<p class="font-weight-bold grey-text">Policy Term: ${policy.policyTerm} </p>
									<p class="font-weight-bold grey-text">Request Date: ${policy.policyDate} </p>
								</div>
							</div>
					      </div>
					    </div>
					  </div>
					  <div class="card">
					        <a class="collapsed font-weight-bold white-text" data-toggle="collapse" href="#collapse97"
					          aria-expanded="false" aria-controls="collapse97">
					    <div class="card-header blue lighten-3 z-depth-1" role="tab" id="heading97">
					      <h5 class="text-uppercase mb-0 py-1">
					         Customer Details
					      </h5>
					    </div>
					    </a>
					    <div id="collapse97" class="collapse" role="tabpanel" aria-labelledby="heading97"
					      data-parent="#accordionEx23">
					      <div class="card-body">
								<p class="font-weight-bold grey-text">Customer Name : ${customer.custName} </p>
								<p class="font-weight-bold grey-text">Father's Name : ${customer.custFname} </p>
		       					<p class="font-weight-bold grey-text">Age : ${customer.custAge} </p>
								<p class="font-weight-bold grey-text">Gender : ${customer.custSex}</p>
								<p class="font-weight-bold grey-text">Qualification : ${customer.custQual}</p>
								<p class="font-weight-bold grey-text">Address : ${customer.custAddress}</p>
								<p class="font-weight-bold grey-text">Occupation : ${customer.custOccup}</p>
								<p class="font-weight-bold grey-text">Registration : ${customer.custDate}</p>
								<p class="font-weight-bold grey-text">Contact : ${customer.custPhone}</p>
					      </div>
					    </div>
					   
					  </div>
					  
					</div>
					<!--Accordion wrapper-->
					
				</div>
					
					<div class="card-footer">
						<c:if test="${policy.flagAgent eq '0'}">
							<a type="button" href="forward?pid=${policy.id}" class="btn purple-gradient btn-lg btn-block btn-rounded" >Forward To Manager</a> 
						</c:if>
						<c:if test="${policy.flagAgent ne '0'}">
							<a type="button"  class="btn btn-success btn-lg btn-block btn-rounded" >Forwarded</a> 
						</c:if>

					</div>
						
					
				</div>
			</div>
				
				
		</div> <!-- div -->
	</div> <!-- container -->
</div> <!-- row -->

<br>

<%@ include file="h&f/agentFooter.jsp"%>