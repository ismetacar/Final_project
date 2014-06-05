<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Samarango</title>
<link href="http://fonts.googleapis.com/css?family=Shanti"
	rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=Tangerine"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="style.css" />

<link rel='stylesheet'
	href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/supersized.css">
<link rel="stylesheet" href="assets/css/style.css">
	<style type="text/css">
body {
	background-color: #5ebcca;
	color: white;
}

input[type=text] {
	width: 250px;
}

input[type=password] {
	width: 250px;
}
</style>

	<script>
		function passwd_control() {
			var sifre = document.getElementById("sifre").value;
			var sifretekrar = document.getElementById("sifretekrar").value;

			if (sifretekrar != (sifre)) {
				alert("parola hatalı..");
				return false;

			}
			if (sifretekrar == "" || sifre == "") {
				alert("parola alanları bos bırakılmamalıdır !..");
				return false;

			}

		}
	</script>
</head>

<body>
	<div id="outer">
		<div id="header">
			<div id="logo">
				<h1>
					<p>Samarango Musteri Kayit</p>
				</h1>
			</div>
			<div id="nav">
				<ul>
					<li class="first active"><a href="index.jsp">Anasayfa</a></li>
					
					<li><a href="servisler.jsp">Servis</a></li>
					
					<li><a href="blog.jsp">Blog</a></li>
					
					<li><a href="hakkimizda.jsp">Hakkimizda</a></li>
					
					<li class="last"><a href="iletisim.jsp">Iletisim</a></li>
				</ul>
			</div>
		</div>

		<body>
			<center>

			<div class="jumbotron">
				<h3>Samarango</h3>
				<p class="lead">Sisteme kayit olabilmeniz icin uye kayit formunu
					doldurmaniz gerekmektedir.</p>

			</div>


			<form action="signupServlet" method="get"
				onsubmit="return passwd_control();">
				<br />
				<input type="text" class="form-control" name="kullanici_isim" size="24" placeholder="Giris yapacaginiz kullanici adinizi giriniz."><br />
				<input type="text" class="form-control" name="isim" size="24" placeholder="Adinizi giriniz."><br /> 
				<input type="text" class="form-control" name="soyad" size="24" placeholder="Soyadinizi giriniz."><br />
				<input type="password" class="form-control" id="sifre" name="sifre" size="16" placeholder="Sifre giriniz."><br /> 
				<input type="password" class="form-control" id="sifretekrar" name="sifretekrar" size="16" placeholder="Sifre Tekrar Giriniz."><br /><br /> 
				<button type="submit">Kayit Ol</button>
			</form>
			<center>
		</body>
</html>