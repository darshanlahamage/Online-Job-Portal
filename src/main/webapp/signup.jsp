<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp Page</title>
<%@include file="all_components/all_css.jsp"%>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>
	<section class="vh-100" style="background-color: #eee;">
		<div class="container h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-lg-12 col-xl-11">
					<div class="card text-black" style="border-radius: 25px;">
						<div class="card-body p-md-5">
							<div class="row justify-content-center">
								<div
									class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

									<img
										src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
										class="img-fluid" alt="Sample image">
									
								</div>
								<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

									<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign
										up</p>
										
									<c:if test="${not empty succMsg }">
										<div class="alert alert-success" role="alert">${ succMsg}</div>
										<c:remove var="succMsg" />
									</c:if>



									<form action="add_user" method="post" class="mx-1 mx-md-4">

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-user fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<input type="text" id="form3Example1c" class="form-control"
													name="name" /> <label class="form-label"
													for="form3Example1c">Enter Your Name</label>
											</div>
										</div>
										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<input type="email" id="form3Example3c" class="form-control"
													name="email" /> <label class="form-label"
													for="form3Example3c">Enter Your Email Id</label>
											</div>
										</div>
										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<input type="password" id="form3Example4c"
													class="form-control" name="ps" /> <label class="form-label"
													for="form3Example4c">Enter Password</label>
											</div>
										</div>
										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fa-solid fa-book fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<input type="text" id="form3Example3c" class="form-control"
													name="qua" /> <label class="form-label"
													for="form3Example3c">Enter Your Qualification</label>
											</div>
										</div>
										
										

										
										<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
											<button type="submit" class="btn btn-primary btn-lg">Register</button>
										</div>
								</div>






								</form>

							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>
</body>
</html>