<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/foundation/4.3.2/css/foundation.min.css" />
<link href='http://fonts.googleapis.com/css?family=Fjalla+One' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Six+Caps' rel='stylesheet' type='text/css'>
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/wedding.css' />" />
</head>
<body>
	<div id="header" class="fixed">
		<nav class="top-bar">
			<section class="top-bar-section">
				<ul>
					<li><a href="#ceremony">ceremony</a></li>
					<li><a href="#reception">reception</a></li>
					<li><a href="#weddingparty">wedding party</a></li>
					<li><a href="#hotel">hotel</a></li>
					<li><a href="#registry">registry</a></li>
				</ul>
			</section>
		</nav>
	</div>
	
	<div id="ceremony">
		<h1>ceremony</h1>
	</div>
	<div id="reception">
		<h1>reception</h1>
	</div>
	<div id="weddingparty">
		<h1>wedding party</h1>
	</div>
	<div id="hotel">
		<h1>hotel</h1>
	</div>
	<div id="registry">
		<h1>registry</h1>
	</div>
</body>
</html>
