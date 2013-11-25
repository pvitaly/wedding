var insta_next_url;
var clientId = '26dbb2b64b414f6599c6e02103c7f55d';
var noMorePages = false;
var firstGet = true;
var min_tag_id;
var tag = "wedding";

function createPhotoElement(photo) {
	
    var innerHtml = $('<img style="padding:2px;">')
      .addClass('instagram-image')
      .attr('src', photo.images.thumbnail.url);

    innerHtml = $('<a>')
      .attr('target', '_blank')
      .attr('href', photo.link)
      .append(innerHtml);

    return innerHtml;
}

function didLoadInstagram(event, response) {

	var that = this;

	if (!noMorePages) {
		if (response.pagination.next_url != undefined) {
			insta_next_url = response.pagination.next_url;
			if (firstGet) {
				min_tag_id = response.pagination.min_tag_id;
				firstGet = false;
			}
		} else {
			noMorePages = true;
			insta_next_url = "https://api.instagram.com/v1/tags/" + tag + "/media/recent?min_tag_id="
				+ min_tag_id;
		}
	} else {
		if (response.pagination.next_url != undefined) {
			insta_next_url = response.pagination.next_url;
		} else {
			if (response.pagination.min_tag_id != undefined) {
				insta_next_url = "https://api.instagram.com/v1/tags/" + tag + "/media/recent?min_tag_id="
						+ response.pagination.min_tag_id;
			} 
		}
		
	}

	if (response.data.length > 0) {
		$.each(response.data, function(i, photo) {
			$(that).append(createPhotoElement(photo));
		});
	}
}

$(document).ready(function() {
	
    $('.instagram').on('didLoadInstagram', didLoadInstagram);
    
    $('.instagram').instagram({
    	 clientId: clientId,
    	 hash: tag,
    	 url : insta_next_url
    });
	
    $('#moreinsta').on('click', function() {
    	$('.instagram').instagram({
    		clientId: clientId,
       	 	hash: tag,
            url : insta_next_url
        });
    });
	
	$('#fixednav li a').on('click', function() {
		
		if ($('.navbar-toggle').css('display') != 'none') {
			$('.navbar-toggle').click();
		}
		
		if ($(this).data('id') == 'rsvp') {
			return;
		}
		
		if ($(this).data('id') == 'home') {
			$('#fixednav li').each(function() {
				$(this).find('a').css('color', '');
				$($(this).find('a').data('id')).fadeOut("slow", "linear");
			});
			return;
		}
		
		$('#fixednav li').each(function() {
			$($(this).find('a').data('id')).css('display', 'none');
			$(this).find('a').css('color', '');
		});
		
		$(this).css('color', '#999');
		$($(this).data('id')).fadeIn("slow", "linear");
		
	});
	
	$('#ceremony-map').zoom({
		magnify : 1
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