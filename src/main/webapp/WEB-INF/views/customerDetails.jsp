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
						<ul class="nav nav-tabs card-header-tabs">
							<li class="nav-item">
								<a class="nav-link active dark-link" id="cust-tab"  data-toggle="tab" href="#cust"
								 role="tab" aria-controls="cust" aria-selected="true">
								Customer Details
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="policy-tab"  data-toggle="tab" href="#policy"
								 role="tab" aria-controls="cust" aria-selected="true">Policies</a>
							</li>
						</ul>
					</div>
				<div class="tab-content" >
					<div id="cust" class="tab-pane fade show active">
						<h4 class="font-weight-bold mb-3">Id :${customer.custId}</h4>
						<h4 class="font-weight-bold mb-3">Name :${customer.custName.toUpperCase()}</h4>
						<h6 class="font-weight-bold grey-text mb-3">Father's Name: ${customer.custFname}</h6>
						<p class="font-weight-bold grey-text">Age : ${customer.custAge} </p>
						<p class="font-weight-bold grey-text">Gender : ${customer.custSex}</p>
						<p class="font-weight-bold grey-text">Qualification : ${customer.custQual}</p>
						<p class="font-weight-bold grey-text">Address : ${customer.custAddress}</p>
						<p class="font-weight-bold grey-text">Occupation : ${customer.custOccup}</p>
						<p class="font-weight-bold grey-text">Registration : ${customer.custDate}</p>
						<p class="font-weight-bold grey-text">Contact : ${customer.custPhone}</p>
								
						<div class="card-footer">
							<button type="button" href="" class="btn purple-gradient btn-lg btn-block btn-rounded" 
							data-toggle="modal" data-target="#editprofile">Edit</button> 
			
						</div>
						
					</div>
				<div id="policy" class="tab-pane fade">
						
						 <!-- Grid row -->
						<div class="row  d-flex justify-content-center">
						  <!-- Grid column -->
						  <div class="col-md-12 col-xl-12 py-0">
						
						<c:set value="0" var="count" />
								 
						<c:forEach items="${policy}" var="p">
							
						    <!--Accordion wrapper-->
						    <div class="accordion md-accordion accordion-2" id="accordionEx${p.custPolyId}" role="tablist"
						      aria-multiselectable="true">
						
						      <!-- Accordion card -->
						      <div class="card">
						
						        <!-- Card header -->
						        <div class="card-header indigo z-depth-1 mb-1" role="tab" id="heading1">
						          <a data-toggle="collapse" data-parent="#accordionEx${p.custPolyId}" href="#collapse${p.custPolyId}" 
						          aria-expanded="<c:if test='${count==0}'>true</c:if>"  aria-controls="collapse${p.custPolyId}">
						            <h4 class="mb-0 white-text text-uppercase font-thin">
						           ${p.policyName} <i class="fas fa-angle-down rotate-icon"></i>
						            </h4>
						          </a>
						        </div>
						
						        <!-- Card body -->
						        <div id="collapse${p.custPolyId}" class="collapse <c:if test='${count==0}'>show</c:if>" role="tabpanel" aria-labelledby="heading1"
						          data-parent="#accordionEx${p.custPolyId}">
						          <div class="card-body mb-1  black-text">
						            
						            	
										<h6 class="font-weight-bold grey-text mb-3">PolicyId :<a href="showpolicy?pid=${p.policyId}">${p.policyId}</a></h6>
										<p class="grey-text">Policy Holder Name : ${p.policyHolderName} </p>
										<p class="grey-text">Policy Date : ${p.premiumDate}</p>
										<p class="grey-text">Premium Amount : ${p.premiumAmount}</p>
										<p class="grey-text">Premium Type : ${p.premiumType}</p>
										<p class="grey-text">Nominee Name : ${p.nomineeName}</p>
										<p class="grey-text">Relation : ${p.relation}</p>
										
						            
						            
						          </div>
						        </div>
						      </div>
						      <!-- Accordion card -->
						
						    </div>
						    <!--/.Accordion wrapper-->
						    <div style="diplay:none">${count=count+1}</div>
						</c:forEach>
							</div>
					  		<!-- Grid column -->
						</div>
						<!-- Grid row -->
						</div>
					</div>
				</div>
			</div>
				<!-- Grid column -->
				
	<style>
		.readOnly{
			background-color: #d3d3d3 !important; 
		}
	</style>
				
				
				<!-- Modal -->
		<div class="modal fade" id="editprofile" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">

			<div class="modal-dialog modal-lg" role="document">
				<!--Content-->
				<div class="modal-content">
					<!--Header-->
					<div class="modal-header text-center  modal-notify purple-gradient">
						<h4 class="modal-title white-text w-100 font-weight-bold py-2">Edit
							Customer</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true" class="white-text">&times;</span>
						</button>
					</div>
					
					<!--  edit profile -->
					<form:form action="editCust" method="post" modelAttribute="customer"> 
						<!--Body-->
				
						<div class="modal-body">
							<div class="md-form mb-5">
								<i class="fas fa-id-card prefix grey-text"></i>
								<form:input  id="form1" class="form-control validate readOnly" path="custId" readonly="true"/>
								<label data-error="wrong" data-success="right" for="form1">Customer	Id</label>
							</div>

							<div class="md-form">
								<i class="fas fa-user-alt prefix grey-text"></i> 
								<form:input  id="form2" class="form-control validate" path="custName" />
								<label data-error="wrong" data-success="right" for="form2">Customer Name</label>
							</div>
							<div class="md-form mb-5">
								<i class="fas fa-user-alt prefix grey-text"></i> 
								<form:input 
									id="form3" class="form-control validate" path="custFname" /> <label
									data-error="wrong" data-success="right" for="form3">Customer
									Father's Name</label>
							</div>

							<div class="md-form">
								<i class="fas fa-birthday-cake prefix grey-text"></i> 
								<form:input id="form4" class="form-control validate" path="custAge" />
								<label data-error="wrong" data-success="right" for="form4">Customer
									Age</label>
							</div>
							<div class="md-form mb-5">
								<i class="fas fa-mercury prefix grey-text"></i> 
								<form:input 
									id="form5" class="form-control validate  readOnly" path="custSex" readOnly="true" /> <label
									data-error="wrong" data-success="right" for="form5">Customer
									Gender</label>
							</div>

							<div class="md-form">
								<i class="fas fa-university prefix grey-text"></i> <form:input
									 id="form6" class="form-control validate" path="custQual" />
								<label data-error="wrong" data-success="right" for="form6">Customer
									Qualifaication</label>
							</div>
							<div class="md-form mb-5">
								<i class="fas fa-briefcase prefix grey-text"></i>
								 <form:input 
									id="form7" class="form-control validate" path="custOccup" /> <label
									data-error="wrong" data-success="right" for="form7">Customer
									Occupation</label>
							</div>

							<div class="md-form">
								<i class="fas fa-map-marker-alt prefix grey-text"></i> <form:input
									 id="form8" class="form-control validate" path="custAddress" />
								<label data-error="wrong" data-success="right" for="form8">Customer
									Address</label>
							</div>
							<div class="md-form">
								<i class="fas fa-calendar-check prefix grey-text"></i> 
								<form:input id="form9" class="form-control validate readOnly" path="custDate" readOnly="true" />
								<label data-error="wrong" data-success="right" for="form9">Customer
									Regsitration Date</label>
							</div>
							<div class="md-form">
								<i class="fas fa-phone prefix grey-text"></i> 
								<form:input id="form10" class="form-control validate " path="custPhone"  />
								<label data-error="wrong" data-success="right" for="form10">Customer
									Contact</label>
							</div>
							<div class="md-form">
								<i class="fas fa-id-badge prefix grey-text"></i> 
								<form:input id="form11" class="form-control validate readOnly" path="custAgentId" readOnly="true" />
								<label data-error="wrong" data-success="right" for="form11">Agent Id
								</label>
							</div>
						</div>
				
				
					
						<!--Footer-->
						<div class="modal-footer justify-content-center">
							<button type="submit" class="btn btn-outline-warning waves-effect">Send
								<i class="fas fa-paper-plane-o ml-1"></i>
							</a>
						</div>
						</form:form>
				</div>
				<!--/.Content-->
				
				
				
			</div>
		</div>


		<!-- Modal end -->
				
				
				
				
		</div> <!-- div -->
	</div> <!-- container -->
</div> <!-- row -->

<br>

<%@ include file="h&f/agentFooter.jsp"%>