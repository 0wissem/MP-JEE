<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%@ page import="web.SessionCounter"%>

<%
String N = (String) request.getSession().getAttribute("nom");
String P = (String) request.getSession().getAttribute("prenom");
String C = (String) request.getSession().getAttribute("numberOfUsers");
int counter = (int) session.getAttribute(SessionCounter.COUNTER);
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/favicon.png">
<title>accueil</title>
<link
	href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/assets/css/paper-dashboard.css?v=2.0.1"
	rel="stylesheet" />

</head>

<body>
	<%-- 	<p>hedhi accueil.jsp ${pageContext.request.contextPath}</p>
	<p>
		nombre d'utilisateur
		<%=counter%></p>
	<h3 class="aa">
		Votre nom est :
		<%
	out.print(N);
	%>
	</h3>
	<h3>
		Votre prenom est :
		<%=P%></h3>

	<div class="aa">
		<a href="/TP03/EditUserProfile">Modifier mon profile</a>
	</div>
	<div class="btn">
		<a href="/TP03/AllUsers">Consulter les utilisateurs</a>
	</div>
 --%>
	<!-- ---------------------------------------------------- -->


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
					<li class="active "><a href="/TP03/accueil"> <i
							class="nc-icon nc-bank"></i>
							<p>Accueil</p>
					</a></li>
					<li><a href="/TP03/AllUsers"> <i
							class="nc-icon nc-diamond"></i>
							<p>Liste des utilisateurs</p>
					</a></li>
					<li><a href="/TP03/addUser"> <i class="nc-icon nc-diamond"></i>
							<p>Ajouter un utilisateur</p>
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel" style="height: 100%">


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
					<a class="navbar-brand" href="javascript:;">Accueil</a>
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
				<div class="row">
					<div class="col-lg-5 col-md-6 col-sm-6">
						<div class="card card-stats">
							<div class="card-body ">
								<div class="row">
									<div class="col-5 col-md-4">
										<div class="icon-big text-center icon-warning">
											<i class="nc-icon nc-vector text-danger"></i>
										</div>
									</div>
									<div class="col-7 col-md-8">
										<div class="numbers">
											<p class="card-category">Utilisateurs Inscrits</p>
											<p class="card-title"><%=C%>
											<p>
										</div>
									</div>
								</div>
							</div>
							<div class="card-footer ">
								<hr>
								<div class="stats">
									<a href="AllUsers" class="simple-text logo-mini">Consulter
										les utilisateurs</a>
									<!-- 								 Consulter la liste
 -->
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-5 col-md-6 col-sm-6">
						<div class="card card-stats">
							<div class="card-body ">
								<div class="row">
									<div class="col-5 col-md-4">
										<div class="icon-big text-center icon-warning">
											<i class="nc-icon nc-favourite-28 text-primary"></i>
										</div>
									</div>
									<div class="col-7 col-md-8">
										<div class="numbers">
											<p class="card-category">Utilisateurs Connectés</p>
											<p class="card-title"><%=counter%>
											<p>
										</div>
									</div>
								</div>
							</div>
							<div class="card-footer ">
								<hr>
								<div class="stats">
									<i class="fa fa-refresh"></i> vous étes connecté
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>


			<footer class="footer footer-black  footer-white "
				style="bottom:0;position:absolute; width:100%">
			<div class="container-fluid">
				<div class="row">
					<nav class="footer-nav">
					<ul>
						<li><a href="https://www.creative-tim.com" target="_blank">Creative
								Tim</a></li>
						<li><a href="https://www.creative-tim.com/blog"
							target="_blank">Blog</a></li>
						<li><a href="https://www.creative-tim.com/license"
							target="_blank">Licenses</a></li>
					</ul>
					</nav>
					<div class="credits ml-auto">
						<span class="copyright"> © <script>
							document.write(new Date().getFullYear())
						</script>, made with <i class="fa fa-heart heart"></i> by Creative Tim
						</span>
					</div>
				</div>
			</div>
			</footer>
		</div>
	</div>
	<!--   Core JS Files   -->
	<script src="../assets/js/core/jquery.min.js"></script>
	<script src="../assets/js/core/popper.min.js"></script>
	<script src="../assets/js/core/bootstrap.min.js"></script>
	<script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!--  Google Maps Plugin    -->
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<!-- Chart JS -->
	<script src="../assets/js/plugins/chartjs.min.js"></script>
	<!--  Notifications Plugin    -->
	<script src="../assets/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="../assets/js/paper-dashboard.min.js?v=2.0.1"
		type="text/javascript"></script>
	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="../assets/demo/demo.js"></script>
	<script>
		$(document).ready(function() {
			// Javascript method's body can be found in assets/assets-for-demo/js/demo.js
			demo.initChartsPages();
		});
	</script>


</body>
</html>
