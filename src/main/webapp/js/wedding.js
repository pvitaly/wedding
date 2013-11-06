$(document).ready(function() {

	$('a').smoothScroll();

	$('#accepted').on('click', function() {
		$('#response').val("accepted");
	});

	$('#declined').on('click', function() {
		$('#response').val("declined");
	});

});