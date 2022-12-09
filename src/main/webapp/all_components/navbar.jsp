
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">Job Portal</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="Home.jsp">Home <span class="sr-only"></span>
				</a></li>

				<c:if test="${userobj.role eq 'admin' }">
					<li class="nav-item"><a href="add_job.jsp" class="nav-link" ><i
							class="fa-solid fa-eye"></i>Post Job</a></li>
					<li class="nav-item"><a href="view_job.jsp" class="nav-link" ><i
							class="fa-solid fa-plus"></i>View Job</a></li>
				</c:if>


			</ul>
			<form class="from-inline my-2 my-lg-0">
				<c:if test="${userobj.role eq 'admin'}">
					<a href="admin.jsp" class="btn btn-light mr-2"> <i
						class="fa-solid fa-user"></i>Admin
					</a>
					<a href="Logout" class="btn btn-light"> <i
						class="fa-solid fa-right-to-bracket"></i>LogOut
					</a>
				</c:if>
				<c:if test="${userobj.role eq 'user'}">
					<a href="EditProfile.jsp" class="btn btn-light mr-2" data-toggle="modal" data-target="#exampleModal"> <i
						class="fa-solid fa-user"></i>${userobj.name}</a>
					<a href="Logout" class="btn btn-light"><i
						class="fa-solid fa-right-to-bracket"></i> LogOut</a>
				</c:if>



				<c:if test="${ empty userobj}">
					<a href="login.jsp" class="btn btn-light mr-2"><i
						class="fa-solid fa-user"></i>Login</a>
					<a href="signup.jsp" class="btn btn-light"><i
						class="fa-solid fa-right-to-bracket"></i>SignUp</a>
				</c:if>

			</form> 
		</div>
	</div>
</nav>

<!- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModaLLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModaLLabel">Profile</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times; </span>
				</button>
			</div>
			<div class="modal-body">
				<div class="card">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="fas fa-user-circle fa-3x"></i>
						</div>
						<table class="table">
							<tbody>
								<tr>
									<th scope="row">Name</th>
									<th>${userobj.name}</th>
								</tr>
								<tr>
									<th scope="row">Qualificatio</th>
									<th>${userobj.qualification }</th>
								</tr>
								<tr>
									<th scope="row">Email</th>
									<th>${userobj.email }</th>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Edit</button>
			</div>
		</div>
	</div>
</div>

