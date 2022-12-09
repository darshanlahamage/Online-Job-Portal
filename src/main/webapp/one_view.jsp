<%@ page import="com.DB.DBconnect"%>
<%@page import="com.entity.Jobs"%>
<%@page import="java.util.List"%>
<%@ page import="com.dao.jobDAO"%>

<%@ page language="java" contentType="text/html; charset-ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>User: Signle Jobs</title>
<style>
     .locat{
          display:flex;    
     }
</style>
<%@include file="all_components/all_css.jsp"%>
</head>
<body style="background-color: #fef1f2;">
	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp" />
	</c:if>
	<%@include file="all_components/navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<% 
				int id =Integer.parseInt(request.getParameter("id"));
                jobDAO dao =new jobDAO (DBconnect.getConn()); 
                Jobs j = dao.getJobById(id);
				%>
				<div class="card mt-5">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="far fo-clipboard fa-2x"></i>
						</div>
						<h6>
							<%=j.getTitle() %>
						</h6>
						<p><%=j.getDescription()%>.
						</p>
						<br>
						<div class="form-row locat" >
							<div class="form-group col-md-3 m-2">
								<input type="text" class="form-control form-control-sm"
									value="Location: <%=j.getLocation()%>" readonly>
							</div>
							<div class="form-group col-md-3 m-2">
								<input type="text" class="form-control form-control-sm"
									value="Category: <%=j.getCategory ()%>" readonly>
							</div>
						</div>
						<h6>
							Publish Date:
							<%=j.getPdate().toString()%>
						</h6>
					</div>
				</div>
			</div>
		</div>
	</div>
	</body>
	</html>