<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="all_components/all_css.jsp"%>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>

	<section class="vh-100">
		<div class="container py-5 h-100">
			<div
				class="row d-flex align-items-center justify-content-center h-100">
				<div class="col-md-8 col-lg-7 col-xl-6">
					<img
						src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
						class="img-fluid" alt="Phone image">
				</div>
              <div style="text-align:center">
				<c:if test="${not empty succMsg }">
					<h4 class="tet-center text-danger">${succMsg }</h4>
					<c:remove var="succMsg"></c:remove>
				</c:if>
              </div>

				<div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
					<form action="Login" method="post">
						<!-- Email input -->
						<div class="form-outline mb-4">
							<input type="email" id="form1Example13"
								class="form-control form-control-lg" name="email" /> <label
								class="form-label" for="form1Example13">Email address</label>
						</div>

						<!-- Password input -->
						<div class="form-outline mb-4">
							<input type="password" id="form1Example23"
								class="form-control form-control-lg" name="password" /> <label
								class="form-label" for="form1Example23">Password</label>
						</div>


						<!-- Submit button -->
						<button type="submit" class="btn btn-primary btn-lg btn-block">Log
							in</button>



					</form>
				</div>
			</div>
		</div>
	</section>

</body>
</html>