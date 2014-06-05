<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<title>Samarango</title>
		<link href="http://fonts.googleapis.com/css?family=Shanti" rel="stylesheet" type="text/css" />
		<link href="http://fonts.googleapis.com/css?family=Tangerine" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" type="text/css" href="style.css" />
	</head>
	
	<body>
	<div id="outer">
			<div id="header">
				<div id="logo">
					<h1><a href="#">Samarango.. Grubun adi olsun dedim...</a></h1>
				</div>
				<div id="nav">
					<ul>
						<li class="first active">
							<a href="index.jsp">Anasayfa</a>
						</li>
						<li>
							<a href="servisler.jsp">Servis</a>
						</li>
						<li>
							<a href="blog.jsp">Blog</a>
						</li>
						<li>
							<a href="hakkimizda.jsp">Hakkimizda</a>
						</li>
						<li class="last">
							<a href="iletisim.jsp">Iletisim</a>
						</li>
					</ul>
				</div>
			</div>
			<div id="banner">
				<img src="http://goo.gl/WwKydc" width="910" height="225" alt="" />
			</div>
			
			<div id="main">
				<div id="sidebar">
					<h3>Nedir bu samarango?</h3>
					<p>
						"Yemek Nerede Yenir?" sorusunun cevabini size en iyi sekilde veriyoruz. Yemek yemek hic bu kadar kolay ve eglenceli olmamisti!
Hem karniniza hem gozunuze hitap edecek binlerce cesit yemekle karsinizdayiz.
Yemek bir ihtiyactan cok bizim icin bir hobi, bir sanat haline geliyor samarango ile..
					</p>
					<h3>Hizmetlerimiz...</h3>
					<p> 
						Genis kapsamli bir cok ozelligi ile aradiginiz pek cok seyi Samarango.com da bulacaksiniz.
					</p>
					<ul class="linkedList">
						<li class="first">
							<a href="#">Buraya Merkez Subemizi yazariz...</a>
						</li>
						<li>
							<a href="#">Buraya Diger Subelerimizi yazariz...</a>
						</li>
						<li>
							<a href="#">Buraya Musteri Yorumlari Koyariz...</a>
						</li>
						<li class="last">
							<a href="#">Buraya AT resimleri koyariz...</a>
						</li>
					</ul>
				</div>
				
			<div id="content">
					<div id="box1">
						<div class="blogpost">
							<img class="left" src="images/fish.jpg" width="250" height="275" alt="" />
							<h2>Ustanin Onerisi</h2>
							<h3>made by <a href="#">ustanin adini yazariz...</a></h3>
							<p>
								Balik. 
							</p>

						</div>
					</div>
			
			<p> Tutun iki kilo hamsi. Verin firina.. </p>
			
			<div id="box1">
						<div class="blogpost">
							<img class="left" src="images/kebap.jpg" width="250" height="275" alt="" />
							<h2>Ustanin Menusu veya gunun menusu tarzi bisey dusundum...</h2>
							<h3>made by <a href="#">ustanin adini yazariz...</a></h3>
							<p>
								kebap..
							</p>

						</div>
					</div> 
					<p> Turkiye denince kebap, kebap denince samarango </p>
					
					<div id="box1">
						<div class="blogpost">
							<img class="left" src="images/organik_tatlilarimiz.jpg" width="250" height="275" alt="" />
							<h2>Ustanin Menusu veya gunun menusu tarzi bisey dusundum...</h2>
							<h3>made by <a href="#">ustanin adini yazariz...</a></h3>
							<p>
								Bu tatlinin adini bilmiyorum.
							</p>

						</div>
					</div> 
					<p> Ama kunefenin Ãuzerine iki yumurta kirin ayni buna benzer. </p>
					<%
			//Databe ile baglandir;
			Connection con = null;
			Statement stmt = null;
			ResultSet rs = null;

			try {

				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/final_project", "root",
						"00966501035985");

				PreparedStatement pstatement = con
						.prepareStatement("SELECT urun_adi, urun_bilgisi, urun_resim FROM urunler");

				rs = pstatement.executeQuery();

				while (rs.next()) {%><h2><%
					out.println(rs.getString("urun_adi"));%></h2></br><%
					out.println(rs.getString("urun_bilgisi"));
					out.println(rs.getString("urun_resim"));
				}

			} catch (SQLException e) {
				out.println(e.getMessage());
			} catch (ClassNotFoundException e) {
				out.println(e.getMessage());
			}
		%>
			</div>
			
			</div>
			
			
			
			
	<div id="copyright">
			Deisgned by  <a href="http://www.forumshr.net/attachments/31586d1357856451/siyah-ucan-at-resimleri-at-fotograflari2.jpg">Samarango</a>.
		</div>
	</body>