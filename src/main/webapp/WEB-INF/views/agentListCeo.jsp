<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="h&f/CEOHeader.jsp"%>
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

			
			<c:if test="${empty agent}">
				<c:out value="NO DATA FOUND"></c:out>
			</c:if>

			<c:if test="${!empty agent }">

				<!-- Card Wider -->
				<div class="card card-cascade p-5">

					<!-- Card image -->
					<div class="view view-cascade gradient-card-header blue-gradient">

						<!-- Title -->
						<h2 class="card-header-title mb-3">Agent List</h2>

					</div>

				<div class="card-body card-body-cascade text-center">

					<table id="dtBasicExample"
						class="table table-striped table-bordered table-sm"
						cellspacing="0" width="100%">
						<thead>
							<tr>
								<th class="th-sm">Id</th>
								<th class="th-sm">Name</th>
								<th class="th-sm">Father Name</th>
								<th class="th-sm">Age</th>
								<th class="th-sm">Gender</th>
								<th class="th-sm">Operations</th>

							</tr>
						</thead>
						<tbody>
						<c:forEach items="${agent}" var="ob">
						
							<tr>
								<td>${ob.agentId}</td>
								<td>${ob.agentName}</td>
								<td>${ob.agentfName}</td>
								<td>${ob.agentAge}</td>
								<td>${ob.agentGen}</td>
								<td>
									<a href="agentDetails?aid=${ob.agentId}"><i  class="fas fa-info-circle fa-2x indigo-text"></i></a>
								</td>
							</tr>
							
						</c:forEach>
						</tbody>
						
					</table>
					</div>
				</div>
				<br />
			</c:if>
			
			${msg}
			
			
		</div>
	</div>
</div>
</main>

<br>

<%@ include file="h&f/CEOFooter.jsp"%>