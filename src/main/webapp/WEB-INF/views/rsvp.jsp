<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Vitaly and Kendra's Wedding | 6.7.13</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href='http://fonts.googleapis.com/css?family=Fjalla+One'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Six+Caps'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css"
	href="<c:url value='css/normalize.css' />" />
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<c:url value='css/wedding.css' />" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

</head>
<body class="rsvpbg">
	<div>

		<div class="navbar navbar-inverse navbar-fixed-top rsvpNav">
			<div class="container">
				<div class="innernav">
					<ul id="fixednav" class="nav navbar-nav">
						<li><a href="/">Go Back</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="greetingRow">
			<h3>
				<span class="purple-emphasis"> Thank you <strong>${guest.firstName}&nbsp${guest.lastName
						}</strong>!
				</span>
			</h3>
		</div>

		<div class="rsvprow">
			<h4>
				We are very <span class="purple-emphasis">excited</span> for you to
				be a part of our special day!
			</h4>

			<c:if test="${guest.plusOneAllowed == 'true'}">
				<h4>Are you bringing a guest?</h4>

				<div class="input-group" style="width: 300px">
					<span class="input-group-addon"> <input id="plusOne"
						name="plusOneResponse" type="radio" class="radio-margin"
						data-id="${guest.id }">Yes
					</span> <span class="input-group-addon"> <input id="comingAlone"
						name="plusOneResponse" type="radio" class="radio-margin"
						data-id="${guest.id }">No, Coming Alone
					</span>
				</div>

				<div id="plusOneForm" style="display: none">
					<fieldset>
						<h4>
							<span class="purple-emphasis">Plus One Name</span>
						</h4>
						<div class="form-group">
							<input id="plusOneFirstName" type="text" data-id="${guest.id }"
								placeholder="First Name" style="text-align: center;"> <input
								id="plusOneLastName" type="text" data-id="${guest.id }"
								placeholder="Last Name" style="text-align: center;">
						</div>
						<div style='margin-top: 5px;'>
							<button type='button' data-id="${guest.id }" id='savePlusOneName'
								class='btn btn-primary'>Save Name</button>
						</div>
					</fieldset>
				</div>
			</c:if>

			<c:if test="${guest.kidsAllowed == 'true'}">
				<h4>Are you bringing your kids?</h4>
				<div class="input-group" style="width: 300px">
					<span class="input-group-addon"> <input id="yesKids"
						name="kidsResponse" type="radio" class="radio-margin"
						data-id="${guest.id }">Yes
					</span> <span class="input-group-addon"> <input id="noKids"
						name="kidsResponse" type="radio" class="radio-margin"
						data-id="${guest.id }">No, Coming Without Kids
					</span>
				</div>

				<div id="kids" data-id="${guest.id }" style="display: none">
					<div class="row">
						<div class="col-xs-3">
							<select id="numberOfKids" class="form-control"
								style="margin-top: 5px;">
								<option>How Many Kids?</option>
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
						</div>
					</div>

					<div id="kidsNames" style="display: none"></div>
				</div>
			</c:if>
		</div>

		<!-- 		<div id="tableChart" class="rsvprow"> -->
		<!-- 			<h1>TABLES GO HERE!!!!</h1> -->
		<!-- 		</div> -->
	</div>

	<script type="text/javascript"
		src="<c:url value='js/vendor/jquery.js' />"></script>
	<script
		src="//netdna.bootstrapcdn.com/bootstrap/3.0.1/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="<c:url value='js/jquery.smooth-scroll.js' />"></script>
	<script type="text/javascript" src="<c:url value='js/wedding.js' />"></script>
</body>
</html>
