$(document).ready(function() {
		$('#featured').cycle({ 
    			fx:     'scrollLeft', speed:   1000, timeout: 7500, pager: '#nav'
  		});	
  			
  		$('#workfeatures').cycle({ 
    			fx:     'fade', 
				speed:   1000, 
				timeout: 15000, 
				pager: '#nav',
				pagerAnchorBuilder: function(idx, slide) { 
        			return '<a href="#"><img src="' + slide.src + '" alt="" width="30" height="30" border="0" /></a>'; 
    			} 
  			});	
			
		$("a.intBox").fancybox({
  			'width'				: 310,
			'height'			: 260
  		});
		
		$(".fancylink").fancybox({
			'padding': 0, //optional
			'width': 1024,
			'height': 750,
			'type': 'iframe'

		}); 
		
		$(".webccl").fancybox({
			'padding': 0, //optional
			'width': 975,
			'height': 540,
			'scrolling' : 'no',
			'type': 'iframe'

		});
		
		$(".hun_lp").fancybox({
			'padding': 0, //optional
			'width': 785,
			'height': '100%',
			//'scrolling' : 'no',
			'type': 'iframe'

		});
		
		$("#cd_lp").fancybox({
			'padding': 0, //optional
			'width': 815,
			'height': '100%',
			//'scrolling' : 'no',
			'type': 'iframe'

		});
		
		$(".e_sixhundo").fancybox({
			'padding': 0, //optional
			'width': 630,
			'height': '100%',
			//'scrolling' : 'no',
			'type': 'iframe'

		});
		
		$(".e_fiveseventyfive").fancybox({
			'padding': 0, //optional
			'width': 605,
			'height': '100%',
			//'scrolling' : 'no',
			'type': 'iframe'

		});
		
		$(".e_pgr").fancybox({
			'padding': 0, //optional
			'width': 620	,
			'height': 500,
			//'scrolling' : 'no',
			'type': 'iframe'

		});
		
		$(".e_sixfifty").fancybox({
			'padding': 0, //optional
			'width': 680,
			'height': '100%',
			//'scrolling' : 'no',
			'type': 'iframe'

		});
});
