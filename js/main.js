
var data = [
	"Stinson Beach, California",
	"Mae Hong Son, Thailand",
	"Punakaiki, New Zealand",
	"Napa, California",
	"Seoul, South Korea",
	"Josef Franz Glacier, New Zealand"
]

//simple jQuery call
$(function() {
	var count = -1;

	$.backstretch([
    	"images/001.jpg",
    	"images/002.jpg",
    	"images/005.jpg",
    	"images/003.jpg",
    	"images/004.jpg",
    	"images/006.jpg"
  	], {duration: 5000, fade: 750});

	$(window).on("backstretch.after", function (e, instance, index) {
		count++

		//if = 5 or leave along
		count = ( count === 6 ) ? 0 : count;

		//update location
		$('#location').html(data[count]);
	});
});