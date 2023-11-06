<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html lang="tr">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>Ozan Yaprak</title>

	<!-- Bootstrap core CSS -->
	<link href="ClientDosyalar/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom fonts for this template -->
	<link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet">
	<link href="ClientDosyalar/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">

	<!-- Custom styles for this template -->
	<link href="ClientDosyalar/css/resume.min.css" rel="stylesheet">
</head>

<body id="page-top">

	<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
		<a class="navbar-brand js-scroll-trigger" href="#page-top">
			<span class="d-block d-lg-none"></span>
			<span class="d-none d-lg-block">
				<img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="ClientDosyalar/img/profile.jpg" alt="">
			</span>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link js-scroll-trigger" href="#about">Hakkımda</a>
				</li>
				<li class="nav-item">
					<a class="nav-link js-scroll-trigger" href="#experience">Tecrübelerim</a>
				</li>
				<li class="nav-item">
					<a class="nav-link js-scroll-trigger" href="#education">Eğitim</a>
				</li>
				<li class="nav-item">
					<a class="nav-link js-scroll-trigger" href="#skills">Yetenekler</a>
				</li>
				<li class="nav-item">
					<a class="nav-link js-scroll-trigger" href="#interests">Hobiler</a>
				</li>
				<li class="nav-item">
					<a class="nav-link js-scroll-trigger" href="#awards">Ödüller</a>
				</li>
			</ul>
		</div>
	</nav>

	<div class="container-fluid p-0">

		<%-- Hakkımda Başlangıç --%>
		<section class="resume-section p-3 p-lg-5 d-flex d-column" id="about">

			<asp:Repeater ID="Repeater1" runat="server">
				<ItemTemplate>

					<div class="my-auto">
						<h1 class="mb-0">
							<asp:Label ID="Label1" runat="server" Text='<%# Eval("Ad") %>'></asp:Label>
							<span class="text-primary">
								<asp:Label ID="Label2" runat="server" Text='<%# Eval("Soyad") %>'></asp:Label>
							</span>
						</h1>

						<div class="subheading mb-5">
							<asp:Label ID="Label3" runat="server" Text='<%# Eval("Adres") %>'></asp:Label>
							<br />
							<asp:Label ID="Label4" runat="server" Text='<%# Eval("Telefon") %>'></asp:Label>
							<a href="#">
								<asp:Label ID="Label5" runat="server" Text='<%# Eval("Mail") %>' style="margin-left:20px;"></asp:Label>
							</a>
						</div>

						<p class="lead mb-5">
							<asp:Label ID="Label6" runat="server" Text='<%# Eval("Kısanot") %>'></asp:Label>
						</p>

						<div class="social-icons">
							<a href="#">
								<i class="fab fa-linkedin-in"></i>
							</a>
							<a href="#">
								<i class="fab fa-github"></i>
							</a>
							<a href="#">
								<i class="fab fa-twitter"></i>
							</a>
							<a href="#">
								<i class="fab fa-facebook-f"></i>
							</a>
						</div>
					</div>

				</ItemTemplate>
			</asp:Repeater>

		</section>

		<hr class="m-0">

		<%-- Tecrübeler Başlangıç --%>
		<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="experience">

			<div class="my-auto">
				<h2 class="mb-5">Tecrübeler</h2>
				<asp:Repeater ID="Repeater2" runat="server">
					<ItemTemplate>
						<div class="resume-item d-flex flex-column flex-md-row mb-5">
							<div class="resume-content mr-auto">
								<h3 class="mb-0">
									<asp:Label ID="Label7" runat="server" Text='<%# Eval("Başlık") %>'></asp:Label>
								</h3>
								<div class="subheading mb-3">
									<asp:Label ID="Label8" runat="server" Text='<%# Eval("Altbaşlık") %>'></asp:Label>
								</div>
								<p>
									<asp:Label ID="Label9" runat="server" Text='<%# Eval("Açıklama") %>'></asp:Label>
								</p>
							</div>
							<div class="resume-date text-md-right">
								<span class="text-primary">
									<asp:Label ID="Label10" runat="server" Text='<%# Eval("Tarih") %>'></asp:Label>
								</span>
							</div>
						</div>
					</ItemTemplate>
				</asp:Repeater>
			</div>
		</section>

		<hr class="m-0">

		<%-- Eğitim Başlangıç --%>
		<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="education">
			<div class="my-auto">
				<h2 class="mb-5">Eğitim</h2>
				<asp:Repeater ID="Repeater3" runat="server">
					<ItemTemplate>
						<div class="resume-item d-flex flex-column flex-md-row mb-5">
							<div class="resume-content mr-auto">
								<h3 class="mb-0">
									<asp:Label ID="Label11" runat="server" Text='<%# Eval("Başlık") %>'></asp:Label>
								</h3>
								<div class="subheading mb-3">
									<asp:Label ID="Label12" runat="server" Text='<%# Eval("Altbaşlık") %>'></asp:Label>
								</div>
								<div>
									<asp:Label ID="Label13" runat="server" Text='<%# Eval("Açıklama") %>'></asp:Label>
								</div>
								<p>
									<asp:Label ID="Label14" runat="server" Text='<%# Eval("NotOrt") %>'></asp:Label>
								</p>
							</div>
							<div class="resume-date text-md-right">
								<span class="text-primary">
									<asp:Label ID="Label15" runat="server" Text='<%# Eval("Tarih") %>'></asp:Label>
								</span>
							</div>
						</div>
					</ItemTemplate>
				</asp:Repeater>
			</div>
		</section>

		<hr class="m-0">

		<%-- Yetenekler Başlangıç --%>
		<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="skills">
			<div class="my-auto">
				<h2 class="mb-5">Yetenekler</h2>

				<div class="subheading mb-3">Programlama Dilleri</div>
				<ul class="list-inline dev-icons">
					<li class="list-inline-item">
						<i class="fab fa-html5"></i>
					</li>
					<li class="list-inline-item">
						<i class="fab fa-css3-alt"></i>
					</li>
					<li class="list-inline-item">
						<i class="fab fa-js-square"></i>
					</li>
					<li class="list-inline-item">
						<i class="fab fa-angular"></i>
					</li>
					<li class="list-inline-item">
						<i class="fab fa-react"></i>
					</li>
					<li class="list-inline-item">
						<i class="fab fa-node-js"></i>
					</li>
					<li class="list-inline-item">
						<i class="fab fa-sass"></i>
					</li>
					<li class="list-inline-item">
						<i class="fab fa-less"></i>
					</li>
					<li class="list-inline-item">
						<i class="fab fa-wordpress"></i>
					</li>
					<li class="list-inline-item">
						<i class="fab fa-gulp"></i>
					</li>
					<li class="list-inline-item">
						<i class="fab fa-grunt"></i>
					</li>
					<li class="list-inline-item">
						<i class="fab fa-npm"></i>
					</li>
				</ul>

				<div class="subheading mb-3">İş Akışı</div>
				<ul class="fa-ul mb-0">
					<asp:Repeater ID="Repeater4" runat="server">
						<ItemTemplate>
							<li>
								<i class="fa-li fa fa-check"></i>
								<asp:Label ID="Label18" runat="server" Text='<%# Eval("Yetenek") %>'></asp:Label>
							</li>
						</ItemTemplate>
					</asp:Repeater>
				</ul>
			</div>
		</section>

		<hr class="m-0">

		<%-- Hobiler Başlangıç --%>
		<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="interests">
			<div class="my-auto">
				<h2 class="mb-5">Hobiler</h2>
				<asp:Repeater ID="Repeater5" runat="server">
					<ItemTemplate>
						<p>
							<asp:Label ID="Label16" runat="server" Text='<%# Eval("Hobi") %>'></asp:Label>
						</p>
					</ItemTemplate>
				</asp:Repeater>
			</div>
		</section>

		<hr class="m-0">

		<%-- Ödüller Başlangıç --%>
		<section class="resume-section p-3 p-lg-5 d-flex flex-column" id="awards">
			<div class="my-auto">
				<h2 class="mb-5">Ödül & Sertifikalar</h2>
				<ul class="fa-ul mb-0">
					<asp:Repeater ID="Repeater6" runat="server">
						<ItemTemplate>
							<li>
								<i class="fa-li fa fa-trophy text-warning"></i>
								<asp:Label ID="Label17" runat="server" Text='<%# Eval("Ödül") %>'></asp:Label>
							</li>
						</ItemTemplate>
					</asp:Repeater>
				</ul>
			</div>
		</section>

	</div>

	<!-- Bootstrap core JavaScript -->
	<script src="ClientDosyalar/vendor/jquery/jquery.min.js"></script>
	<script src="ClientDosyalar/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="ClientDosyalar/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="ClientDosyalar/js/resume.min.js"></script>

</body>

</html>
