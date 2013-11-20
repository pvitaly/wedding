<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Kendra and Vitaly's Wedding | 6.7.14</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href='http://fonts.googleapis.com/css?family=Fjalla+One'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css"
	href="<c:url value='css/normalize.css' />" />
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/wedding.css" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top rsvpNav center"
		role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="navbar-collapse collapse">
				<ul id="fixednav" class="nav navbar-nav">
					<li><a data-id='home' href="javascript:void(0)">home</a></li>
					<li><a data-id='#aboutus' href="javascript:void(0)">about
							us</a></li>
					<li><a data-id='#ceremony' href="javascript:void(0)">ceremony</a></li>
					<li><a data-id='#reception' href="javascript:void(0)">reception</a></li>
					<li><a data-id='#weddingparty' href="javascript:void(0)">wedding
							party</a></li>
					<li><a data-id='#hotel' href="javascript:void(0)">hotel</a></li>
					<li><a data-id='#registry' href="javascript:void(0)">registry</a></li>
					<li><a href="" data-toggle="modal" data-target="#rsvpModal">rsvp</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>

	<div class="container">

		<div class='row bannerbox'>
			<div class="row" style="text-align: center;">
				<h1 class="names garamondItalic">
					<span class="white-emphasis">Kendra &amp; Vitaly</span>
				</h1>
				<h3 class="info">
					<span class="garamond green-emphasis">June 7, 2014</span>
				</h3>
				<h3>
					<span class="garamond green-emphasis">howell, michigan</span>
				</h3>
			</div>
		</div>

		<div id="aboutus" class="row whitebox garamondItalic"
			style="display: none;">
			<div class="row" style="text-align: center">
				A little known fact <span class="purple-emphasis sloopy-small">About
					Us,</span> is that we watch the movie Fight Club exactly one time a year:
				on Valentine's Day.
			</div>
			<div class="col-md-4">
				Thank you for visiting our wedding website! We figured that since it
				is the year 2013, it is probably a good idea to embrace technology!
				So, Vitaly decided to make this site.
				<p>
					It is a place where we have general information <span
						class="purple-emphasis sloopy-small small-font">about us</span>,
					the wedding, and even a place where you can RSVP instead of sending
					us real mail. Real mail is so 2003!
				<p>We welcome you to browse the site and hopefully you will
					enjoy it and find it useful! If you have any complaints about how
					it works... we don't care :). Just kidding! All complaints go to
					Kendra.
				<p>
					Anyway, here is a random photo of us from a random time during our
					relationship. Also, check out some facts <span
						class="purple-emphasis sloopy-small small-font">about us</span> on
					the other side of that picture!
			</div>
			<div class="col-md-4">
				<img class="img-style" alt="Us at Color Run"
					src="/images/kendra_vitaly_colorrun.jpg">
			</div>
			<div class="col-md-4">
				<span class="purple-emphasis sloopy-small small-font">In the
					early</span> stages of a budding romance, as well as a general boycott of
				the holiday, we started a tradition of watching Fight Club at the
				end of every valentine's day. Little did we know, this was just the
				beginning of many traditions and rituals to come.
				<p>
					<span class="purple-emphasis sloopy-small small-font">Since
						we met</span> while working at GFS in 2007, we have made a habit of
					occasional late night appetizers at Applebees.
				<p>
					<span class="purple-emphasis sloopy-small small-font">It is
						our</span> ritual to equally partake (and avoid) laundry duty.
				<p>
					<span class="purple-emphasis sloopy-small small-font">Our
						tradition</span> is to cut down our own Christmas tree each year.
				<p>
					<span class="purple-emphasis sloopy-small small-font">Vitaly
						proposed to Kendra</span> in their home in Ann Arbor. It was a
					beautifully elegant proposal, filled with music, rose petals, and a
					not-so-attractive cry from Kendra. Now, six years after meeting, we
					embrace those current habits, traditions, and rituals. Even more
					excitingly, we look forward to making many more together!
			</div>
		</div>
		<div id="ceremony" class="row whitebox" style="display: none;">
			<div class="row" style="text-align: center;">
				<span class='purple-emphasis sloopy-small'>The Ceremony</span>
			</div>
			<div class="col-md-6" style="text-align: center;">
				<div class="row>">
					<ul style="list-style: none;">
						<li style="height: 47px;"><span
							class="purple-emphasis sloopy-small">June 7th, 2014</span></li>
						<li><span class="garamond">4:30 P.M.</span></li>
						<li><span class="garamond">S. Hickory Ridge Picnic
								Area</span></li>
						<li><span class="garamond">Kensington Metro Park</span></li>
						<li><span class="garamond">Brighton, MI</span></li>
					</ul>
				</div>
				<div class="row garamondItalic" style="text-align: center;">...
					Here are some more random photos of us!</div>
				<div class="row" style="text-align: center; padding-bottom: 5px;">
					<img style="width: 71%;" class="img-style"
						alt="Us in St. Joseph, MI" src="/images/kendra_vitaly_stjoe.jpg">
				</div>
			</div>
			<div class="col-md-6" style="text-align: center;">
				<img style="width: 75%;" class="img-style"
					alt="Us in Central Park, NYC" src="/images/kendra_vitaly_nyc.jpg">
			</div>
		</div>
		<div id="reception" class="row whitebox" style="display: none;">
			<div class="row" style="text-align: center;">
				<span class='purple-emphasis sloopy-small'>The Reception</span>
			</div>
			<div class="col-md-6" style="text-align: center;padding-bottom: 5px;">
				<img class="img-style" alt="Us at Steven's Wedding"
					src="/images/kendra_vitaly_yakwedding.jpg">
			</div>
			<div class="col-md-6" style="text-align: center;">
				<div class="row">
					<ul style="list-style: none;">
						<li style="height: 47px;"><span
							class="purple-emphasis sloopy-small">June 7th, 2014</span></li>
						<li><span class="garamond">4:30 P.M.</span></li>
						<li><span class="garamond">Celebrity Room</span></li>
						<li><span class="garamond">Crystal Gardens</span></li>
						<li><span class="garamond">Howell, MI</span></li>
					</ul>
				</div>
				<div class="row garamondItalic" style="text-align: center;">...
					And there's another photo!</div>
			</div>
		</div>
		<div id="weddingparty" class="row whitebox garamondItalic"
			style="display: none;">
			<div class="row" style="text-align: center;">
				We would be nowhere without <span
					class='purple-emphasis sloopy-small'>The Wedding Party</span> Below
				is a collection of our best friends!
			</div>
			<!-- Carousel
    ================================================== -->
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
					<li data-target="#myCarousel" data-slide-to="4"></li>
					<li data-target="#myCarousel" data-slide-to="5"></li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<ul class="ch-grid">
							<li>
								<div class="ch-item shelby-img">
									<div class="ch-info-wrap">
										<div class="ch-info">
											<div class="ch-info-front shelby-img"></div>
											<div class="ch-info-back">
												<h3>
													Shelby<br>Jaynes
												</h3>
												<p>Maid of Honor</p>
											</div>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="ch-item jason-img">
									<div class="ch-info-wrap">
										<div class="ch-info">
											<div class="ch-info-front jason-img"></div>
											<div class="ch-info-back">
												<h3>
													Jason<br>Sydor
												</h3>
												<p>Best Man</p>
											</div>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="item">
						<ul class="ch-grid">
							<li>
								<div class="ch-item melissa-img">
									<div class="ch-info-wrap">
										<div class="ch-info">
											<div class="ch-info-front melissa-img"></div>
											<div class="ch-info-back">
												<h3>
													Melissa<br>Beals
												</h3>
												<p>Matron of Honor</p>
											</div>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="ch-item brandon-img">
									<div class="ch-info-wrap">
										<div class="ch-info">
											<div class="ch-info-front brandon-img"></div>
											<div class="ch-info-back">
												<h3>
													Brandon<br>Lynn
												</h3>
												<p>Groomsman</p>
											</div>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="item">
						<ul class="ch-grid">
							<li>
								<div class="ch-item bailey-img">
									<div class="ch-info-wrap">
										<div class="ch-info">
											<div class="ch-info-front bailey-img"></div>
											<div class="ch-info-back">
												<h3>
													Bailey<br>Hall
												</h3>
												<p>Bridesmaid</p>
											</div>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="ch-item nate-img">
									<div class="ch-info-wrap">
										<div class="ch-info">
											<div class="ch-info-front nate-img"></div>
											<div class="ch-info-back">
												<h3>
													Nate<br>Jackson
												</h3>
												<p>Groomsman</p>
											</div>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="item">
						<ul class="ch-grid">
							<li>
								<div class="ch-item brittany-img">
									<div class="ch-info-wrap">
										<div class="ch-info">
											<div class="ch-info-front brittany-img"></div>
											<div class="ch-info-back">
												<h3>
													Brittany<br>Hernandez
												</h3>
												<p>Bridesmaid</p>
											</div>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="ch-item devon-img">
									<div class="ch-info-wrap">
										<div class="ch-info">
											<div class="ch-info-front devon-img"></div>
											<div class="ch-info-back">
												<h3>
													Devon<br>Jaynes
												</h3>
												<p>Groomsman</p>
											</div>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="item">
						<ul class="ch-grid">
							<li>
								<div class="ch-item lindsay-img">
									<div class="ch-info-wrap">
										<div class="ch-info">
											<div class="ch-info-front lindsay-img"></div>
											<div class="ch-info-back">
												<h3>
													Lindsay<br>Welsh
												</h3>
												<p>Bridesmaid</p>
											</div>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="ch-item ryan-img">
									<div class="ch-info-wrap">
										<div class="ch-info">
											<div class="ch-info-front ryan-img"></div>
											<div class="ch-info-back">
												<h3>
													Ryan<br>Balbaugh
												</h3>
												<p>Groomsman</p>
											</div>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="item">
						<ul class="ch-grid">
							<li>
								<div class="ch-item andrea-img">
									<div class="ch-info-wrap">
										<div class="ch-info">
											<div class="ch-info-front andrea-img"></div>
											<div class="ch-info-back">
												<h3>
													Andrea<br>Sydor
												</h3>
												<p>Bridesmaid</p>
											</div>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="ch-item ian-img">
									<div class="ch-info-wrap">
										<div class="ch-info">
											<div class="ch-info-front ian-img"></div>
											<div class="ch-info-back">
												<h3>
													Ian<br>Beals
												</h3>
												<p>Groomsman</p>
											</div>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<a class="left carousel-control" data-target="#myCarousel"
					data-slide="prev"><span
					class="glyphicon glyphicon-chevron-left"></span></a> <a
					class="right carousel-control" data-target="#myCarousel"
					data-slide="next"><span
					class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
			<!-- /.carousel -->
		</div>
		<div id="hotel" class="row whitebox garamondItalic"
			style="display: none;">
			<div class="row" style="text-align: center;">
				<span class='purple-emphasis sloopy-small'>The Hotel</span>
			</div>
			<div class="col-md-6" style="text-align: center;">
				To help you enjoy our wedding to the fullest, we have reserved a
				block of rooms at the Courtyard Detroit Brighton. Click <strong><a
					href="http://cwp.marriott.com/dtwbr/jaynespekerwedding/"
					target="_blank">here</a></strong> to reserve your room or call <strong>(810)
					225-9200</strong> and mention the <strong>Peker/Jaynes Wedding</strong> and
				receive a special rate! For your convenience, we are providing a
				shuttle that will take you from the hotel to the ceremony, from the
				ceremony to the reception, and from the reception back to the hotel!
			</div>
			<div class='col-md-6' style="text-align: center;">
				<div id='gmap' style="width: 425px; height: 300px;"></div>
			</div>
		</div>
		<div id="registry" class="row whitebox garamondItalic"
			style="display: none;">
			<div class="row" style="text-align: center;">
				<span class='purple-emphasis sloopy-small'>The Registry</span>
			</div>
			<div class="col-md-6" style="text-align: center;">
				<img alt="KOHLS" src="/images/amazon-logo.png">
			</div>
			<div class="col-md-6" style="text-align: center;">
				<img alt="KOHLS" src="/images/cratelogo.png">
			</div>
		</div>

		<div class="modal fade" id="rsvpModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel" align="center">Répondez
							s'il Vous Plaît</h4>
					</div>
					<div class="modal-body" align="center">

						<form:form role="form" action="rsvp" method="put">
							<div class="form-group" align="center">
								<input type="text" name="uniqueId"
									class="form-control input-small" id="rsvpCode"
									placeholder="RSVP CODE FROM INVITATION"
									style="text-align: center;">
							</div>
							<div class="form-group" align="center">
								<input type="hidden" name="response" id="response">

								<div class="input-group">
									<span class="input-group-addon"> <input id="accepted"
										name="rsvpResponse" type="radio" class="radio-margin">Accept
										With Pleasure
									</span> <span class="input-group-addon"> <input id="declined"
										name="rsvpResponse" type="radio" class="radio-margin">Reject
										With Regret
									</span>
								</div>
								<!-- /input-group -->
							</div>
							<div class="form-group" align="center">
								<button type="reset" class="btn" data-dismiss="modal">Close</button>
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</form:form>

					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
	</div>

	<script type="text/javascript"
		src="<c:url value='js/vendor/jquery.js' />"></script>
	<script
		src="//netdna.bootstrapcdn.com/bootstrap/3.0.1/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
	<script type="text/javascript" src="<c:url value='js/wedding.js' />"></script>
</body>
</html>
