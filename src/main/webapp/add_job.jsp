<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Post Jobs</title>
<%@include file="all_components/all_css.jsp"%>
<style>
.job_option {
	display: flex;
}
</style>
</head>
<body style="background-color: #f0fif2">
	<%@include file="all_components/navbar.jsp"%>

	<c:if test="${userobj.role ne 'admin'}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fa-solid fa-user-group fa-3x"></i>
						<c:if test="${not empty succMsg }">
							<div class="alert alert-success" role="alert">${ succMsg}</div>
							<c:remove var="succMsg" />
						</c:if>
						<h5>Add Jobs</h5>
					</div>
					<form action="add_job" method="post">
						<div class="form-group">
							<label required>Enter Title</label> <input type="text"
								name="title" class="form-control">
						</div>
						<div class="form-row job_option">
							<div class="form-group col-md-4">
								<label>Location</label> <select name="Location"
									class="custom-select " id="inlineFormCustomSelect Pref">
									<option selected>Choose ...</option>
									<option value="Maharashtra">Maharashtra</option>
									<option value="Jharkhand">Jharkhand</option>
									<option value="Gujurat">Gujurat</option>
									<option value="Bhubaneswar">Bhubaneswar</option>
									<option value="Delhi">Delhi</option>
									<option value="Banglore">Banglore</option>
									<option value="Chennai">Chennai</option>
									<option value="Hydrabad">Hydrabad</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Category</label> <select
									class="custom-select

									id="
									inlineFormCustomSelectPref" name="category">
									<option selected>Choose ...</option>
									<option value="IT">IT</option>
									<option value="Devloper">Devloper</option>
									<option value="Banking">Banking</option>
									<option value="Engineer">Engineer</option>
									<option value="Teacher">Teacher</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Status</label> <select class="form-control" name="status">
									<option class="Active" value="Active">Active</option>
									<option class="inactive" value="Inactive">Inactive</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label>Enter Description</label>
							<textarea required rows="6" cols="" name="desc"
								class="form-control"></textarea>
						</div>
						<button class="btn btn-success mt-3">Publish Job</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>