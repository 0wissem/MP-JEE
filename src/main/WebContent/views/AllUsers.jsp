<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String N = (String) request.getSession().getAttribute("nom");
String P = (String) request.getSession().getAttribute("prenom");
%>


<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">

<title>all users</title>
<link
	href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/assets/css/paper-dashboard.css?v=2.0.1"
	rel="stylesheet" />
</head>
<body>
	<%-- 	<form action="AllUsers" method="get">
		<input type="text" name="motCle" value="${motCle}"> <input
			type="submit" value="OK">
	</form> --%>
	<div class="wrapper">
		<div class="sidebar" data-color="white" data-active-color="danger">
			<div class="logo">
				<a href="https://www.creative-tim.com" class="simple-text logo-mini">
					<div class="logo-image-small">
						<img src="../assets/img/logo-small.png">
					</div> <!-- <p>CT</p> -->
				</a> <a href="https://www.creative-tim.com"
					class="simple-text logo-normal"> <%=P%> <%=N%> <!-- <div class="logo-image-big">
            <img src="../assets/img/logo-big.png">
          </div> -->
				</a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li><a href="/TP03/accueil"> <i class="nc-icon nc-bank"></i>
							<p>Accueil</p>
					</a></li>
					<li class="active "><a href="/TP03/AllUsers"> <i
							class="nc-icon nc-diamond"></i>
							<p>Liste des utilisateurs</p>
					</a></li>
					<li><a href="/TP03/addUser"> <i class="nc-icon nc-diamond"></i>
							<p>Ajouter un utilisateur</p>
					</a></li>

				</ul>
			</div>
		</div>

		<!-- --------------------------------------------- -->
		<div class="main-panel" style="min-height: 100%">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
			<div class="container-fluid">
				<div class="navbar-wrapper">
					<div class="navbar-toggle">
						<button type="button" class="navbar-toggler">
							<span class="navbar-toggler-bar bar1"></span> <span
								class="navbar-toggler-bar bar2"></span> <span
								class="navbar-toggler-bar bar3"></span>
						</button>
					</div>
					<a class="navbar-brand" href="javascript:;">Liste des utilisateurs</a>
				</div>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navigation" aria-controls="navigation-index"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-bar navbar-kebab"></span> <span
						class="navbar-toggler-bar navbar-kebab"></span> <span
						class="navbar-toggler-bar navbar-kebab"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-end"
					id="navigation">
					
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link btn-rotate"
							href="/TP03/EditUserProfile"> <i
								class="nc-icon nc-settings-gear-65"></i>
								<p>
									<span class="d-lg-none d-md-block">Account</span>
								</p>
						</a></li>
					</ul>
				</div>
			</div>
			</nav>
			<!-- End Navbar -->
			<div class="content">
				<form action="AllUsers" method="get">
					<div class="input-group no-border">
						<input type="text" value="" class="form-control"
							placeholder="Search..." type="text" name="motCle"
							value="${motCle}">
						<div class="input-group-append">
							<button type="submit" class="input-group-text  shadow-none"
								style="box-shadow: none !important; outline: 0">
								<i class="nc-icon nc-zoom-split"></i>
							</button>
						</div>
					</div>
				</form>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table">
							<body>
							<thead class=" text-primary">
								<th>NOM</th>
								<th>PRENOM</th>
								<th>LOGIN</th>
								<th class="text-right">ACTION</th>
							</thead>
							<c:forEach items="${allUsers}" var="u">
								<tr>

									<td>${u.nom}</td>
									<td>${u.prenom}</td>
									<td>${u.login}</td>
									<td class="text-right"><a
										href="/TP03/EditUserProfile?id=${u.id }"> E </a> | <a
										href="/TP03/EditUserProfile?deleteById=${u.id }"> S </a></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>