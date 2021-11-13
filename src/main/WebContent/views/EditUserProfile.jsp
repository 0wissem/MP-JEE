<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String NOM = (String) request.getAttribute("NOM") ; // (String) request.getSession().getAttribute("nom");
String PRENOM = (String) request.getAttribute("PRENOM"); // (String) request.getSession().getAttribute("prenom");
String LOGIN = (String) request.getAttribute("LOGIN");
String POST_ACTION = (String) request.getAttribute("POST_ACTION");
//Boolean ERROR = (Boolean)  request.getAttribute("ERROR");
//String PWD = (String)request.getAttribute("PWD") ;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/favicon.png">
<title>Edit user profile</title>
<link
	href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/assets/css/paper-dashboard.css?v=2.0.1"
	rel="stylesheet" />
</head>
<body>
	<!-- 	<script type="text/javascript">
			function alert() {
				alert("Famma error");
			}
		
	</script> -->
	<%--  	<form action="<%=POST_ACTION %>" method="post">
		Prenom: <input type="text" name="nom" value=<%=PRENOM%>
			required="required"><br /> nom: <input type="text"
			name="prenom" value=<%=NOM%> required="required"><br />
		login: <input type="text" name="login" value=<%=LOGIN%>
			required="required"><br /> pwd: <input type="text"
			name="pwd" required="required"><br /> confirmed Pwd: <input
			type="text" name="confirmedPwd" required="required"><br /> <input
			type="submit" value="OK" > <br />
	</form> --%>
	<!-- <div class="sidebar" data-color="white" data-active-color="danger">

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
		</div> -->


	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg   navbar-transparent">
		<div class="container-fluid">
			<div class="navbar-wrapper">
				<div class="navbar-toggle">
					<button type="button" class="navbar-toggler">
						<span class="navbar-toggler-bar bar1"></span> <span
							class="navbar-toggler-bar bar2"></span> <span
							class="navbar-toggler-bar bar3"></span>
					</button>
				</div>
				<a class="navbar-brand" href="javascript:;">Edit profile</a>
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
	<div class="">
		<div class="col-md-12">
			<div class="card-user container">

				<div class="">
					<form action="<%=POST_ACTION%>" method="post">

						<div class="row">
							<div class="col-md-6 pr-1">
								<div class="form-group">
									<label>Prénom</label> <input type="text" class="form-control"
										name="prenom" value=<%=PRENOM%> placeholder="Prénom"
										required="required">
								</div>
							</div>
							<div class="col-md-6 pl-1">
								<div class="form-group">
									<label>Nom</label> <input type="text" class="form-control"
										placeholder="Nom" name="nom" value=<%=NOM%>
										required="required">
								</div>
							</div>
						</div>
						<div class="row">

							<div class="col-md-12 pr-1">
								<div class="form-group">
									<label>Login</label> <input type="text" class="form-control"
										placeholder="Login" name="login" value=<%=LOGIN%>
										required="required">
								</div>
							</div>

						</div>
						<div class="row">


							<div class="col-md-6 pr-1">
								<div class="form-group">
									<label for="exampleInputEmail1">Mot de passe</label> <input
										type="text" class="form-control" placeholder="Mot de passe" name="pwd"
										required="required">
								</div>
							</div>
							<div class="col-md-6 pl-1">
								<div class="form-group">
									<label for="exampleInputEmail1">Confirmer le mot de
										passe</label> <input type="text" class="form-control"
										placeholder="Mot de passe" required="required"  name="confirmedPwd">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="update ml-auto mr-auto">
								<button type="submit" class="btn btn-primary btn-round">Confirmer
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<footer class="footer footer-black  footer-white "
		style="bottom: 0; position: absolute; width: 100%">
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