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
<link href="http://fonts.googleapis.com/css?family=Shanti"
	rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=Tangerine"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>
	<div id="outer">
		<div id="header">
			<div id="logo">
				<h1>
					<a href="#">Samarango.. Grubun adi olsun dedim...</a>
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
		<div id="banner">
			<img
				src="http://www.eatingsensibly.com/wp-content/uploads/2010/08/fruitsalad900x250.jpg"
				width="910" height="225" alt="" />
		</div>

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
						.prepareStatement("SELECT gonderi_mesaji, gonderi_basligi FROM post");

				rs = pstatement.executeQuery();

				while (rs.next()) {%><h2><%
					out.println(rs.getString("gonderi_basligi"));%></h2></br><% 
					out.println(rs.getString("gonderi_mesaji"));%></br><% 

				}

			} catch (SQLException e) {
				out.println(e.getMessage());
			} catch (ClassNotFoundException e) {
				out.println(e.getMessage());
			}
		%>


		<div id="copyright">
			Deisgned by <a
				href="http://www.forumshr.net/attachments/31586d1357856451/siyah-ucan-at-resimleri-at-fotograflari2.jpg">Samarango</a>.
		</div>
</body>