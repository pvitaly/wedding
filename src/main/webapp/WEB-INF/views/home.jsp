<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<!--[if IE 8]><html class="no-js lt-ie9" lang="en" ><![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<title>Kendra and Vitaly's Wedding | 6.7.14</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<link rel="icon" type="image/x-icon" href="favicon.ico" />

<link href='http://fonts.googleapis.com/css?family=EB+Garamond'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/wedding.css" />
<script type="text/javascript" src="js/vendor/custom-modernizr.js"></script>
<!--[if IE]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

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
					<li><a data-id='#instagram' href="javascript:void(0)">#pekerwedding</a></li>
					<li><a data-id="rsvp" href="" data-toggle="modal"
						data-target="#rsvpModal">rsvp</a></li>
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
				<span class="purple-emphasis sloopy-small">About Us</span>
			</div>
			<div class="col-md-4" style="text-align: center; font-size: 130%;">
				<span class="aboutus-header">welcome to our wedding website,
					and thank you for visiting!</span>

				<p>Vitaly has poured a great deal of work into this website, so
					we are planning to use it to its fullest potential! Feel free to
					read some information about us!
				<p>In exciting news, we are hip and forging a new way in RSVP
					traditions! We have decided to embrace Vitaly's tech-savvy self,
					and are opting for a complete on-line RSVP area. Look forward to
					this in the formal invitation!
				<p>Anyway, please enjoy browsing the website; hopefully you find
					some useful maps or information. If you don't find anything
					useful...well, our apologies. Field all complaints to Kendra (at
					your own risk).
				<p>
					<span class="aboutus-header">thanks for your support, we
						look forward to the party in june!</span>
			</div>
			<div class="col-md-4">
				<img class="img-style" alt="Us at Color Run"
					src="/images/kendra_vitaly_colorrun.jpg">
			</div>
			<div class="col-md-4" style="font-size: 130%">
				<div class="row" style="text-align: center;">
					<span class="aboutus-header">so really. you clicked on this
						part to get the dish on us, right? well, let's give you what you
						want then!</span>
				</div>
				<p>
					<span class="purple-emphasis sloopy-small small-font">We met
						in 2007,</span> when we both worked as sales associates at GFS. Kendra
					decided early on that she was going to date Vitaly one day, and she
					set the wheels in motion to make that happen. Her acts of valor
					included dragging her roommate to KFC to bring Vitaly lunch,
					meeting Vitaly at midnight to get coney island food from a sketchy
					establishment, and saving up dirty laundry so she could stay at
					Vitaly's for hours while completing it (free laundry for a college
					student is a great incentive).
				<p>
					<span class="purple-emphasis sloopy-small small-font">We've
						come a long way </span>since then. Vitaly proposed to Kendra in November
					of 2012. There was music, rose petals, notes, and ugly-sobs of
					celebration (we'll let you guess from whom). It's been an awesome
					journey, and we are grateful to our friends and family for having a
					hand in making the people we are today.
			</div>
		</div>
		<div id="ceremony" class="row whitebox" style="display: none;">
			<div class="row" style="text-align: center;">
				<span class='purple-emphasis sloopy-small'>The Ceremony</span>
			</div>
			<div class="col-md-6" style="text-align: center;">
				<div class="row>">
					<ul class="details-list">
						<li>Come See Us Tie The Knot</li>
						<li><span class="garamond">4:00 P.M.</span></li>
						<li><span class="garamond"><a
								style="text-decoration: none;" href="" data-toggle="modal"
								data-target="#ceremonyMap">south hickory ridge picnic area</a></span></li>
						<li style="font-weight: bold;"><span class="garamond"><a
								style="text-decoration: none;"
								href="http://maps.google.com/maps?daddr=Kensington+Metropark,+Milford+Township+MI,+48380"
								target="_blank">kensington metropark</a></span></li>
					</ul>
				</div>
				<div class="row garamondItalic" style="text-align: center;">Here
					are some more random photos of us!</div>
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
		<div id="reception" class="row whitebox"
			style="display: none; text-align: center;">
			<div class="row">
				<div class="row">
					<span class='purple-emphasis sloopy-small'>The Reception</span>
				</div>
				<div class="col-md-6">
					<div class="row">
						<ul class="details-list">
							<li>Join Us For Food, Drinks and Dancing</li>
							<li><span class="garamond">6:00 P.M.</span></li>
							<li><span class="garamond">celebrity room</span></li>
							<li style="font-weight: bold;"><span class="garamond"><a
									style="text-decoration: none;"
									href="http://maps.google.com/maps?daddr=Crystal+Gardens,+Howell+MI,+48843"
									target="_blank">crystal gardens</a></span></li>
						</ul>
					</div>
					<div class="row garamondItalic">... And more photos!</div>
					<div class="row" style="text-align: center; padding-bottom: 5px;">
						<img style="width: 71%;" class="img-style"
							alt="Us in St. Igance, MI" src="/images/us_best.jpg">
					</div>
				</div>
				<div class="col-md-6" style="padding-top: 5px;">
					<div class="row">
						<img style="width: 60%;" class="img-style" alt="Us On Bikes"
							src="/images/us_bikes.jpg">
					</div>
					<div class="row" style="padding-top: 10px;">
						<img style="width: 60%;" class="img-style"
							alt="Us at Steven's Wedding"
							src="/images/kendra_vitaly_yakwedding.jpg">
					</div>
				</div>
			</div>
		</div>
		<div id="weddingparty" class="row whitebox garamondItalic"
			style="display: none;">
			<div class="row strong-font" style="text-align: center;">
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
		<div id="hotel" class="row whitebox garamondItalic strong-font"
			style="display: none;">
			<div class="row" style="text-align: center;">
				<span class='purple-emphasis sloopy-small'>The Hotel</span>
			</div>
			<div class="col-md-6" style="text-align: center;">
				We appreciate the fact that many of you will be coming from out of
				town to make our day very special.

				<p>
					So, to make your visit more convenient, we have reserved a block of
					rooms at the <a style="text-decoration: none;"
						href="http://maps.google.com/maps?daddr=Courtyard+Detroit+Brighton+7799+Conference+Center+Dr,+Brighton+MI+48114"
						target="_blank">Courtyard Marriot in Brighton</a>.
				<p>
					Click <strong><a style="text-decoration: none;"
						href="http://cwp.marriott.com/dtwbr/jaynespekerwedding/"
						target="_blank">here</a></strong> to reserve your room or call <strong><a
						style="text-decoration: none;" href="tel:8102259200">(810)
							225-9200</a></strong> and mention the <strong><span
						class="purple-emphasis">Peker/Jaynes Wedding</span></strong> to receive a
					special rate!
				<p>For your convenience, we are providing a shuttle that will
					take you from the hotel to the ceremony, from the ceremony to the
					reception, and from the reception back to the hotel!
			</div>
			<div class='col-md-6' style="text-align: center;">
				<div class="row">
					<img style="width: 75%;" class="img-style"
						alt="Us In Niagara Falls" src="/images/us_wine.jpg">
				</div>
			</div>
		</div>
		<div id="registry" class="row whitebox garamondItalic strong-font"
			style="display: none;">
			<div class="row" style="text-align: center;">
				<span class='purple-emphasis sloopy-small'>The Registry</span>
			</div>
			<div class="row" style="text-align: center; padding: 5px;">Having
				you at our wedding is something we will cherish and remember
				forever. However, if you would like to give us a gift, we won't stop
				you! We are registered at a few different stores, so to make it
				easier - we have listed them all on the knot. Click on the image
				below to see our gift list!</div>
			<div class="row" style="text-align: center;">
				<a target="_blank"
					href="http://registry.theknot.com/kendra-jaynes-vitaly-peker-june-2014-mi/6271242"><img
					alt="theknot" src="/images/theknot.png"></a>
			</div>

		</div>
		<div id="instagram" class="row whitebox"
			style="display: none; text-align: center;">
			<div class="row">
				<span class='purple-emphasis garamond'>#PEKERWEDDING</span>
			</div>
			<div class="row garamondItalic strong-font" style="padding: 15px;">
				Instagrammers unite! If you are going to be taking pictures with
				your smart phone and posting them on instagram, please use the
				hashtag <span class='purple-emphasis'>#pekerwedding</span>. Even if
				you are taking a picture of your hand, we would love to see it! The
				pictures will instantly be posted here and we can relive our day
				instantly!
			</div>
			<div class="row instagram"></div>
			<div class="row" style="padding: 15px;">
				<button id="moreinsta" class="btn btn-success">Load More</button>
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

		<div class="modal fade" id="ceremonyMap" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title garamond" id="myModalLabel" align="center">map
							of kensington metropark</h4>
					</div>
					<div class="modal-body" align="center">
						<div id="ceremony-map" class="row">
							<img class="img-style" alt="Map to the ceremony"
								src="/images/kensington_park.jpg">
						</div>
						<div class="modal-footer" style="text-align: center;">
							<button type="button" class="btn btn-success"
								data-dismiss="modal">Close</button>
						</div>

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
		src="<c:url value='js/jquery.zoom.min.js' />"></script>
	<script type="text/javascript" src="js/instafeed.min.js"></script>
	<script type="text/javascript" src="<c:url value='js/wedding.js' />"></script>
</body>
</html>
