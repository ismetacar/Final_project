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
		
		<link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="assets/css/reset.css">
        <link rel="stylesheet" href="assets/css/supersized.css">
        <link rel="stylesheet" href="assets/css/style.css">
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
			
			<div class="page-container">
            <h1>Login</h1>
            <form action="FinalServlet" method="get">
                <input type="text" name="username" class="username" placeholder="Kullanici Adi">
                <input type="password" name="password" class="password" placeholder="Sifre">
                <button type="submit" >Sign me in</button>
                
                <div class="error"><span>+</span></div>
            </form>
            ${kullaniciyok}
            <div class="connect">
                <p>Or connect with:</p>
                <p>
                    <a class="facebook" href=""></a>
                    <a class="twitter" href=""></a>
                </p>
            </div>
        </div>

        <!-- Javascript -->
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/js/supersized.3.2.7.min.js"></script>
        <script src="assets/js/supersized-init.js"></script>
        <script src="assets/js/scripts.js"></script>
        
            </body>

</html>