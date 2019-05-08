<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="h&f/agentHeader.jsp"%>
<%@page import="java.util.*"%>



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

${request }
			
			<c:if test="${empty request}">
				<c:out value="NO DATA FOUND"></c:out>
			</c:if>

			<c:if test="${!empty request }">

				<!-- Card Wider -->
				<div class="card card-cascade p-5">

					<!-- Card image -->
					<div class="view view-cascade gradient-card-header blue-gradient">

						<!-- Title -->
						<h2 class="card-header-title mb-3">Policy Requests By Customer</h2>

					</div>

				<div class="card-body card-body-cascade text-center">

					<table id="dtBasicExample"
						class="table table-striped table-bordered table-sm"
						cellspacing="0" width="100%">
						<thead>
							<tr>
								<th class="th-sm">Policy Id</th>
								<th class="th-sm">Policy Name</th>
								<th class="th-sm">Customer Id</th>
								<th class="th-sm">Customer Name</th>
								<th class="th-sm">Amount</th>
								<th class="th-sm">More</th>

							</tr>
						</thead>
						<tbody>
						<c:forEach items="${request}" var="r">
						
							<tr>
								<td>${r.policyId}</td>
								<td>${r.policyName}</td>
								<td>${r.customerId}</td>
								<td>${r.customerName}</td>
								<td>${r.amount}</td>
								<td>
									<a href="reuqestDetails?id=${r.id}"><i  class="fas fa-info-circle fa-2x indigo-text"></i></a>
								</td>
							</tr>
							
						</c:forEach>
						</tbody>
						<tfoot>
							<tr>
								<th >Id</th>
								<th >Name</th>
								<th >Father Name</th>
								<th >Age</th>
								<th >Gender</th>
								<th >More</th>
							</tr>
						</tfoot>
					</table>
					</div>
				</div>
				<br />
			</c:if>
		</div>
	</div>
</div>
</main>

<br>

<%@ include file="h&f/agentFooter.jsp"%>