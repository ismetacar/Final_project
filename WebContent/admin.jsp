<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Admin</title>
<link href="http://fonts.googleapis.com/css?family=Shanti"
	rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=Tangerine"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>
	<div id="outer">
		${uye_kullanici_ad}
		<div id="header">
			<div id="logo">
				<h1>
					<a href="#">Samarango-Admin</a>
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

		<br>
		<div class="anaekran">

			<div class="ustBolum"></div>
			<div class="ortaBolum">
				<div class="ortaSol"></div>

				<div class="duyuru">
					<form action="postServlet">

						<h3>
							<b>Gonderi Ekleyin</b>
						</h3>
						<input type="text" name="gonderi_basligi" class="username"
							placeholder="Gonderi Basligini Giriniz">
						<!-- <hr> -->

						<textarea placeholder="Gonderi Metnin Govdesi" name="textgonderi"
							cols="300" rows="15"></textarea>
						<br>
						<button class="btn btn-warning" type="submit">Kaydet</button>

					</form>

				</div>


				<!-- <div class="ortaBosluk"></div> -->
				<div class="Urun">
					<h3>
						<b>Yeni Urun Ekleyin</b>
					</h3>
					<hr>
					<form action="urunServlet" method="get">

						<input class="girdi" type="text" name="urunAd"
							placeholder="Urun Adi"><br> <br>
						<textarea name="Fiyat" placeholder="Urun Bilgisi" cols="300"
							rows="15"></textarea>
						<br> <br> <input type="text" class="girdi"
							name="urunResim" placeholder="Urun resminin linki"><br>
						<br> Fotograf Ekle :<input type="file" name="imgfile">

						<button class="btn btn-warning">Kaydet</button>
					</form>

				</div>
				<div class="ortaSag"></div>
			</div>

		</div>
		<form action="cikisServlet">
			<input type="submit" value="cikis">
		</form>
</body>
</html>