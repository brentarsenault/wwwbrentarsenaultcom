<?php
// This is the runner of the content behind the site. //

	$page = $_GET['value']; 
	$prev = $page-1;
	$next = $page+1;

	switch($page){
		// INTERACTIVE MEDIA //
		case 1:
			// Progressive Scoreboard
			$workFeatures 	= '<div id="workfeatures">
												<img src="images/work-gpx-intpgr.jpg" alt="Progressive" width="450" height="450" />
											</div>';
			$workImg	= 'images/work-hl-intpgr.jpg';
			$res				= "Lead Developer, Quality Assurance";
			$skills			= "Photoshop, Flash, Actionscript 2";
			$display 		= 'The Progressive Scoreboard was a 2010 concept that ran Q1 through Q3. 
									<p></p>
									Designed to be visually stimulating this banner was built within the Actionscript 2 library. The only images in this banner are Flo and the background to the scoreboard. A movie clip script runs on the timeline and scrambles all the numbers as it counts up for seven seconds. The light blinking is caused by a call between the ending of the scrambler and the main timeline. This concept was constructed for an entire set for the Progressive client, which includes 160x600, 728x90 and MSN spec banners.
									';
			$launcher	= '<a class="intBox" href="includes/flash/intpgr_300x250.swf">Launch 300x250 Prototype&nbsp;<span>>></span> </a>';
  		break;
		case 2: 
			// Ocean Spray Rich Media
			$workFeatures 	= "<div id='workfeatures'>
									<img src='images/work-gpx-intos-before.jpg' alt='Ocean Spray Load State' width='450' height='450' />
									<img src='images/work-gpx-intos-over.jpg' alt='Ocean Spray Hover State' width='450' height='450' />
								</div>";
			$workImg 	= "images/work-hl-intos.jpg";
			$res		= "Lead Developer, Quality Assurance";
			$skills		= "Photoshop, Flash, XML, Actionscript 3, Pointroll Frameworks";
			$display 	= 'When Ocean Spray wanted to introduce a brand new Blueberry drink to the world they opted to run a coupon spot on MarthaStewart.com. Our creative team at Arnold came up with idea of showcasing recipes you can utilize with the new blueberry drink. It became a full spot include the rich media unit that ran giving away $1.00 coupons to costumers who were interested.
								</p><p>
								The media unit was created within the Pointroll frameworks and gives in total 3 different flash swfs. The first is the initial load collapsed banner, followed by the opened recipe book that was interactive displaying three total recipes at the time and a closed by default banner. All these banners were created with Flash Player 10, in Actionscript 3 with both Greensock and our Arnold library. The main recipe book was built with XML driving all the images and content that was stored for the animation. This was done so that if a recipe could be changed out quickly.
								';
			$launcher		= '<a class="fancylink" href="http://www.pointroll.com/PointRoll/AdDemo/CreativeManager/Nestle/1344290/Blueberry0.4724693242460489.asp">Launch Pointroll Prototype&nbsp;<span>>></span> </a>';
  		break;
  		case 3:
			// Carnival Fun4all
			$workFeatures 	= "<div id='workfeatures'>
									<img src='images/work-gpx-intccl.jpg' alt='Carnival' width='450' height='450' />
								</div>";
			$workImg 	= "images/work-hl-intccl.jpg";
			$res		= "Lead Developer, Quality Assurance";
			$skills		= "Photoshop, Flash, Actionscript 3";
			$display 		= 'Arnold Digital tasked me the challenge of creating these banners without using any timeline animation or pause timeouts. What initially seemed like an overwhelming amount of thought going to develop a banner, turned out to be a useful practice. 
									</p><p>
									We used Arnold based classes that had been developed in house by a Senior Flash Developer made future banners easier. While this proved to make the animation look sleeker, it cut down resize time nearly in half. It was built with the Arnold library and touch of Greensock. We were able to create the prototype in half a day and a set in nearly 1.5 days of work. 
									';
			$launcher		= '<a class="intBox" href="includes/flash/intccl_300x250.swf">Launch 300x250 Prototype&nbsp;<span>>></span> </a>';
  		break;
  		case 4:
			// Panasonic Viera
			$workFeatures 	= "<div id='workfeatures'>
									<img src='images/work-gpx-intpan.jpg' alt='Carnival' width='450' height='450' />
								</div>";
			$workImg 	= "images/work-hl-intpan.jpg";
			$res		= "Lead Developer, Quality Assurance";
			$skills		= "Photoshop, Flash, Actionscript 3";
			$display 		= 'The Panasonic Viera “Inside the TV” concept showed how Skype and other social media can help communicate with family through the Viera television. At thend of the banner you can see a small rollover that shows Grandpa trying to talk to his family, pretty neat.
									</p><p>
									This banner is created with timeline animation and built with Actionscript 3 in Flash Player 9. It offers a great amount of images optimized to there best quality are a reasonable amount of file size. However, I was only responsible for building the 300x250 prototype of the animation for this particular set.
									';
			$launcher		= '<a class="intBox" href="includes/flash/intpan_300x250.swf">Launch 300x250 Prototype&nbsp;<span>>></span> </a>';
  		break;
  		// WEB DEVELOPMENT //
  		case 5:
			// Mederma Website
			$workFeatures 	= '<div id="workfeatures">
												<img src="images/work-gpx-webmed.jpg" alt="Mederma" width="450" height="450" />
											</div>';
			$workImg 	= "images/work-hl-webmed.jpg";
			$res		= "Asset Manager, Website Maintenance, Quality Assurance";
			$skills		= "Photoshop, Flash, PHP (CodeIgniter Frameworks), XHTML/CSS, Javascript";
			$display 		= 'Merz Phamacenticals is a client of Arnold New York. As part of Boston’s digital team responsibility with Mederma, we help push forward on implementing changes on the live server.
									</p><p>
									My first introduction to Mederma was adding Mederma’s new Stretch Marks Therapy to the site. Mederma’s site is built with the CodeIgniter frameworks so implemeting an entire section gave great access to learning a new frameworks.
									';
			$launcher	= '<a target="_blank" href="http://www.mederma.com">Launch Project&nbsp;<span>>></span> </a>';
  		break;
  		case 6:
			// Carnival Towel Animal Landing Page
			$workFeatures 	= '<div id="workfeatures">
												<img src="images/work-gpx-webccl1.jpg" alt="Carnival" width="450" height="450" />
												<img src="images/work-gpx-webccl2.jpg" alt="Carnival" width="450" height="450" />
											</div>';
			$workImg 	= "images/work-hl-webccllp.jpg";
			$res		= "Lead Developer, Quality Assurance";
			$skills		= "Photoshop, XHTML/CSS";
			$display 		= 'This project is near and dear to my heart. My first “out of school, real job going on the web for millions” project. Towel animals welcome to Carnival Cruise Lines. When Carnival first came to Arnold we pushed cute and cuddly towel animals to help advertise their product. A few spots ran on ABC.com during commericals of episodes you can watch on their site.
									<p></p>
									The page is built with XHTML and is wrapped inside a div tag that holds two columns for all the text and for the towel animal on the right side (I think it is a bunny). All styles are pulled from an external stylesheet that the page uses. In the end, the page is completely browser tested and W3C approved. We also worked with CheetahMail to set up the form on the right side. All information entered from this landing page needed to go directly to their database for mail lists.
									';
			$launcher	= '<a class="webccl" href="includes/lp/lp_carnival/lp_carnival.html">Launch HTML Project&nbsp;&nbsp;<span>>></span> </a>';
  		break;
  		case 7:
			// Huntington Landing Pages
			$workFeatures 	= '<div id="workfeatures">
												<img src="images/work-gpx-webhtg1.jpg" alt="Huntington Registration Page" width="450" height="450" />
												<img src="images/work-gpx-webhtg2.jpg" alt="Huntington Splash Page" width="450" height="450" />
												<img src="images/work-gpx-webhtg3.jpg" alt="Huntington CD Landing Page" width="450" height="450" />
											</div>';
			$workImg 	= "images/work-hl-webhtg.jpg";
			$res		= "Lead Developer, Quality Assurance";
			$skills		= "Photoshop, XHTML/CSS, Javascript";
			$display 		= 'This section is a collection of Huntington Bank web development I have done with Arnold and Huntington. All landing pages have their new brand incorporated into them, “Huntington, Welcome”. With this partnership came specific challenges to overcome as a developer. Their CMS is outdated and we will still build and with it comes all inline CSS.
									</p><p>
									In this collection is a Huntington Debit Sweeps registration and splash page along with the email sent out to the Huntington Bank costumers. All inline styles, all basic HTML allowing us to work within their system. A spin-off in the collection is  the CD landing page which was a quick page that mostly works with images. Soon to be added is the brand new Huntington Homepage refresh.
									';	
			$launcher	= 	'<a class="hun_lp" href="includes/lp/lp_huntington/register.html">Launch Debit Sweeps Landing Page &nbsp;&nbsp;<span>>></span> </a> <br /><br />
						 		  	 <a class="hun_lp" href="includes/lp/lp_huntington/registration.html">Launch Registration Page &nbsp;&nbsp;<span>>></span> </a> <br /><br />
						 			 <a id="cd_lp" href="includes/lp/lp_huntington/cd.html">Launch CD Landing Page &nbsp;&nbsp;<span>>></span> </a> <br /><br />
						   			 <a class="e_sixhundo" href="includes/email/e_huntington/e_huntington.html">Launch Debit Sweeps Email &nbsp;&nbsp;<span>>></span> </a>
						  			';
  		break;
  		case 8:
			// Amtrak NTD Employee Website
			$workFeatures 	= "<div id='workfeatures'>
									<img src='images/work-gpx-webamtrak.jpg' alt='Amtrak' width='450' height='450' />
								</div>";
			$workImg 	= "images/work-hl-webamtrak.jpg";
			$res		= "Front End Developer, Asset Manager";
			$skills		= "Photoshop, XHTML/CSS, Javascript, Jquery, Drupal";
			$display 	= 'This micro site, which encouraged Amtrak’s employees to volunteer at Amtrak’s National Train Day was built across two of Arnold’s offices. It helped promote the event as well to employees that did not know about it. It displayed who would be special guests, answered specific questions about the event overall. The microsite was built with a drupal CMS on the backend. 
								<p></p>
								My responsibility was creating modules that could be manipulated constantly with fresh copy.  This project posed a number of challenges due to the site’s design and the high levels of Internet Explore 6 users.  One challenge involved keeping the background secure for situations with low, horizontal screen resolutions.  Another challenge was keeping the right and left column heights consistently the same, regardless of the content changes.  The colums adjust based on content, but also add the total pixel of each other and communicate the difference, whichever one is shorter has the difference added to it to make them equal.
								';			
			$launcher	= '';
  		break;
  		case 9:
			// Ocean Spray Cranberry Club Emails
			$workFeatures 	= '<div id="workfeatures">
												<img src="images/work-gpx-webos.jpg" alt="Ocean Spray Cranberry Club Memorial Email" width="450" height="450" />
												<img src="images/work-gpx-webos1.jpg" alt="Ocean Spray Cranberry Club Dads & Grads Email" width="450" height="450" />
											</div>';
			$workImg 	= "images/work-hl-webos.jpg";
			$res		= "Lead Developer, Quality Assurance";
			$skills		= "Photoshop, XHTML/CSS";
			$display 	= 'Ocean Spray cranberry club members receive emails on updated recipes, seasonal recipes every month. If there is a special event Ocean Spray will send a different email for that specific event. Both times that I have been apart of cranberry club email it has been a special event. Ocean Spray has a template and naming convention that we have to follow that specifies that the entire email is cut into images.
								<p></p>
								It is built with on tables and seven totals row. Each row that has more than two columns has its own table wrapped inside. The naming convention starts with the row number three times followed by left, right or middle. It is tough to follow sometimes, but it is what the client wants us to deliver.
								';
			$launcher	=  '<a class="e_fiveseventyfive" href="includes/email/e_os/dads/e_dads.html">Launch Dads & Grads Email &nbsp;&nbsp;<span>>></span> </a><br /><br />
									 <a class="e_fiveseventyfive" href="includes/email/e_os/memorial/e_memorial.html">Launch Memorial Day Email &nbsp;&nbsp;<span>>></span> </a>';
  		break;
  		case 10:
			// Volvo Emails
			$workFeatures 	= '<div id="workfeatures">
												<img src="images/work-gpx-webvol.jpg" alt="Volvo Email" width="450" height="450" />
											</div>';
			$workImg 	= "images/work-hl-webvolvo.jpg";
			$res			= "Lead Developer, Quality Assurance";
			$skills		= "Photoshop, XHTML/CSS";			
			$display 	= 'Volvo wanted a set template to go out nationwide displaying the cars that came out and there prices. The catch however, was that each individual dealership was going to send it out themselves. The price had to be created so that it can be changed by each dealership. With the email have gradient and pushing the beautiful image of each car it would be a challenge to sneak in a spot that can’t ruin the email just by changing the price.
								<p></p>
								With that in mind – all price related content was developed with functionality for dynamic updates through Volvo’s email vendor.  The light brown background gradient behind each car allowed the dynamic pricing to be in its own table and changing it would not distort the whole row. We tested on the largest possible numbers we could get it in there and passed on the fly.
								';	
			$launcher	= '<a class="e_sixhundo" href="includes/email/e_volvo/e_volvo.html">Launch Volvo Email &nbsp;&nbsp;<span>>></span> </a>';
  		break;
  		case 11:
			// Carnival Modular Templates
			$workFeatures 	= '<div id="workfeatures">
												<img src="images/work-gpx-webccle.jpg" alt="Carnival Modular Templates" width="450" height="450" />
											</div>';
			$workImg 	= "images/work-hl-webccle.jpg";
			$res		= "Lead Developer, Asset Manager, Quality Assurance";
			$skills		= "Photoshop, XHTML/CSS";
			$display 	= 'Carnival sends out roughly 3 or 4 emails campaigns a week. In early 2009, they asked Arnold to create seven templates that can seamlessly work together.  Working as a team, we decided modular templates would best fit the clients needs.  In order to implement this concept, it was decided that Arnold and Carnival needed to come up with a understanding for a naming convention for all aspects of the process! When sitting down it became apparent that a spreadsheet was the best way to keep track of everything collaboratively.
								<p></p>
								Using the modules for the navigation, body, sidebar, hero and footer we moved into build mode using agreed upon naming conventions.  The team effort resulted in great designs that allowed for quick development turn around for all of Carnival’s email endeavors.  I was involved from concept to build and was a responsible for making sure that all files and images were named according to our teams understanding with Carnival. 
								';
			$launcher	= '<a class="e_sixfifty" href="includes/email/e_ccltemplate/e_ccltemplate.html">Launch Modular Template Email &nbsp;&nbsp;<span>>></span> </a>';
  		break;
  		case 12:
			// Help Flo Emails
			$workFeatures 	= '<div id="workfeatures">
												<img src="images/work-gpx-webpgr.jpg" alt="Progressive Help Flo Email" width="450" height="450" />
											</div>';	
			$workImg 	= "images/work-hl-webpgr.jpg";
			$res		= "Lead Developer, Quality Assurance";
			$skills		= '';
			$display 	= 'In late 2009, Progressive ran a “Help Flo” commercial to find an assistant to Flo for an upcoming campaign. Users were told to upload videos telling Progressive why they deserve to be Flo’s assistant for the shoot. Arnold’s duty in the event was to create an email campaign to show if they video was submitted, approved or rejected by the Progressive media team.
								</p><p>
								The email was particularly tricky due to the blue ribbon on the bottom being roughly 10 pixels off of the main content of the page. It presents an interesting measurement dilemma. I was able to create an extra column that was only present on the wrapper that extended the extra bit to complete the whole concept. It was than just a matter of changing the Flo image as the design was a template for every version.
								';	
			$launcher	= '<a class="e_pgr" href="includes/email/e_progressive/accepted/pgr_accepted.html">Launch Accepted Email &nbsp;&nbsp;<span>>></span> </a><br /><br />
									<a class="e_pgr" href="includes/email/e_progressive/rejected/pgr_rejected.html">Launch Rejected Email &nbsp;&nbsp;<span>>></span> </a><br /><br />
									<a class="e_pgr" href="includes/email/e_progressive/submission/pgr_submitted.html">Launch Submitted Email &nbsp;&nbsp;<span>>></span> </a>';
  		break;
		default:
      		$display =  "Here the build";
  		break;
	}

?>