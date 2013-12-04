var insta_next_url;
var clientId = '26dbb2b64b414f6599c6e02103c7f55d';
var noMorePages = false;
var firstGet = true;
var min_tag_id;
var tag = "pekerwedding";

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
			
			if (min_tag_id == undefined) {
				if (response.pagination.min_tag_id != undefined) {
					insta_next_url = "https://api.instagram.com/v1/tags/" + tag + "/media/recent?min_tag_id="
							+ response.pagination.min_tag_id;
				} 
			} else {
				insta_next_url = "https://api.instagram.com/v1/tags/" + tag + "/media/recent?min_tag_id="
				+ min_tag_id;
			}
			
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

	
});