<%@page import="com.entity.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.dao.jobDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: View Job</title>
<%@include file="all_components/all_css.jsp"%>
<style>
.form-row {
	display: flex;
}
</style>
</head>

<body style="background-color: #f0fif2">
	<%@include file="all_components/navbar.jsp"%>
	<c:if test="${userobj.role ne 'admin'}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h5 class="text-center text-primary">All Jobs</h5>

				<c:if test="${not empty succMsg }">
					<div class="alert alert-success" role="alert">${ succMsg}</div>
					<c:remove var="succMsg" />
				</c:if>

				<%
				jobDAO dao = new jobDAO(DBconnect.getConn());
				List<Jobs> list = dao.getAllJobs();
				for (Jobs j : list) {
				%>
				<div class="card mt-2">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="far fa-clipboard fo-2x"></i>
						</div>



						<h6><%=j.getTitle()%></h6>
						<p><%=j.getDescription()%></p>
						<br>
						<div class="form-row">
							<div class="form-group col-md-3 m-2">
								<input type="text" class="form-control form-control-sm"
									value="Location:<%=j.getLocation()%>" readonly>
							</div>
							<div class="form-group col-md-3 m-2">
								<input type="text" class="form-control form-control-sm"
									value="Category:<%=j.getCategory()%>" readonly>
							</div>
							<div class="form-group col-md-3 m-2">
								<input type="text" class="form-control form-control-sm"
									value="Status:<%=j.getStatus()%>" readonly>
							</div>
						</div>
						<h6>
							Publish Date:
							<%=j.getPdate()%></h6>
						<div class=" text-center ">
							<a href="edit_job.jsp?id=<%=j.getId()%>"
								class="btn btn-sm bg-success text-white"> Edit </a> <a
								href="delete?id=<%=j.getId()%>"
								class="btn btn-sm bg-danger text-white">Delete </a>
						</div>
					</div>
				</div>


				<%
				}
				%>


			</div>
		</div>
	</div>

</body>
</html>