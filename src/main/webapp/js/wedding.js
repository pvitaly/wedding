$(document).ready(function() {
	
	$(window).scroll(function() {
		var top = $(this).scrollTop();
		if (top > 36) {
			$('.purpnav').fadeIn(500);
		} else {
			$('.purpnav').fadeOut(500);
		}
	});

	$('#fixednav li a').on('click', function() {
		$('#fixednav li').each(function() {
			$($(this).find('a').data('id')).css('display', 'none');
		});
		$($(this).data('id')).fadeIn("slow", "linear");
	});

	$('#accepted').on('click', function() {
		$('#response').val("accepted");
	});

	$('#declined').on('click', function() {
		$('#response').val("declined");
	});
	
	$('.carousel').carousel({
		interval : false
	});

	$('#plusOne').click(function() {
		$.ajax({
			url : "rsvp/setPlusOne",
			type : "POST",
			data : {
				id : $(this).data('id'),
				plusOne : true
			},
			dataType : "json"
		}).done(function(data) {
			$('#plusOneFirstName').val(data.plusOneFirstName);
			$('#plusOneLastName').val(data.plusOneLastName);
			$('#plusOneForm').fadeIn("fast", "linear");
		});
	});

	$('#comingAlone').click(function() {
		$('#plusOneForm').fadeOut("fast", "linear");

		$.ajax({
			url : "rsvp/setPlusOne",
			type : "POST",
			data : {
				id : $(this).data('id'),
				plusOne : false
			}
		});

	});

	$('#yesKids').click(function() {
		$.ajax({
			url : "rsvp/setKids",
			type : "POST",
			data : {
				id : $(this).data('id'),
				bringingKids : true
			}
		}).done(function() {
			$('#kids').fadeIn("fast", "linear");
		});
	});

	$('#noKids').click(function() {
		$.ajax({
			url : "rsvp/setKids",
			type : "POST",
			data : {
				id : $(this).data('id'),
				bringingKids : false
			}
		}).done(function() {
			$('#kids').fadeOut("fast", "linear");
		});
	});

	$('#numberOfKids').on('change', function() {
		$('#kidsNames').text("");
		if ($(this).val() != 'How Many Kids?') {
			for ( var i = 0; i < $(this).val(); i++) {
				$('#kidsNames').append("<div class='form-group' style='margin-top:5px;'><input class='kidName' type='text' placeholder='Full Name' style='text-align: center;'></div>");
			}
			var namesBtn = 'Save Names';
			if ($(this).val() == 1) {
				namesBtn = 'Save Name';
			}
			$('#kidsNames').append("<div style='margin-top:5px;'><button type='button' id='saveNames' class='btn btn-primary'>" + namesBtn + "</button></div>");
			$('#kidsNames').fadeIn("fast", "linear");
		} 
	});
	
	$('#kidsNames').on('click', '#saveNames', function() {
		var names = "";
		$('.kidName').each(function() {
			names += $(this).val() + ",";
		});
		names = names.substring(0,names.length-1);
		
		$.ajax({
			url: 'rsvp/saveKidsNames',
			type: "POST",
			data: {id:$('#kids').data('id'), names: names}
		}).done(function(){
			$('#kidSuccess').remove();
			$('#kidsNames').append("<div id='kidSuccess' class='alert alert-success' style='margin-top:5px'><button type='button' class='close' data-dismiss='alert'>&times;</button><strong>Success! Names Have Been Saved!</strong></div>");
		});
	});
	
	$('#savePlusOneName').on('click', function() {
		$.ajax({
			url: 'rsvp/savePlusOneName',
			type: "POST",
			data: {id:$(this).data('id'), firstName: $('#plusOneFirstName').val(), lastName: $('#plusOneLastName').val()}
		}).done(function(data){
			$('#plusOneSuccess').remove();
			$('#plusOneForm').append("<div id='plusOneSuccess' class='alert alert-success' style='margin-top:5px'><button type='button' class='close' data-dismiss='alert'>&times;</button><strong>Success! " + data +  " is coming with you!</strong></div>");
		});
	});

});