$(document).ready(function() {

	// Pull in mah tweets
	getTwitters('tweets', { 
		id: 'joshkennedy', 
		count: 1, 
		enableLinks: true, 
		ignoreReplies: false, 
		clearContents: true,
		template: '%text% <i class="birdie"></i>'
	});
	
	
	
	$('.post-cover').click(function() {
		$(this).toggleClass('activeShow')
	});
	$('div.image').click(function() {
		$(this).toggleClass('activeShow')
	});
	
	
});