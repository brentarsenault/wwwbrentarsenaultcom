<?php include 'control/runner.php'; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>brent arsenault | web &amp; interactive developer</title>
	
	<link href="images/ba-fav-icon.ico" rel="shortcut icon" type="image/x-icon" />
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	
	<link href="css/main.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/jquery-ui.css" rel="stylesheet" type="text/css" />
    <link href="css/jquery.fancybox-1.3.1.css" rel="stylesheet" type="text/css" />
    
  	<script type="text/javascript" src="scripts/jquery-ui.min.js"></script>
  	<script type="text/javascript" src="scripts/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="scripts/jquery.fancybox-1.3.1.js"></script>
  	<script type="text/javascript" src="scripts/cycle.js"></script>
  	<script type="text/javascript" src="scripts/runner.js"></script>
  	
</head>
<body>
<div id="stuck">
	<div id="stuck-inside">
		<div id="left">
			<a href="index.php"><img src="images/logo.gif" alt="Word" width="245" height="65" border="0" /></a>
		</div>
		<div id="right">
			<div class="rightside"><a href="http://www.brentarsenault.com/resume/Arsenault_Brent_Resume.pdf" id="resume">&nbsp;Download Resume&nbsp;</a></div>
			<div class="rightside"><a href="mailto:brent@brentarsenault.com">brent@brentarsenault.com</a></div>
		</div>
</div>
<div class="prev-next">
	<a href="work.php?value=<?php if($prev == 0)  echo $prev=12; else echo $prev; ?>"><span><<</span>&nbsp;PREV</a>&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;<a href="work.php?value=<?php if ( $next == 13) echo $next = 1; else echo $next; ?>"">NEXT&nbsp;<span>>></span></a>
</div>
<div class="portfolioHolder" id="1">
	<div class="displayGrid">
		<?php echo $workFeatures; ?>
	</div>
	<div class="displayGrid" >
		<img src="<?php echo $workImg; ?>" alt="" width="335" width="60" />
		<p>
			Responsibility: <span><?php echo $res; ?></span>
		</p>
		<p>
			<?php echo $display; ?>
		</p>
        <p>
			<?php echo $launcher; ?>
		</p>
        <div id="nav">
		</div>
	</div>
	<div class="footer">
		Copyright 2007-2010 -- www.brentarsenault.com -- All Rights Reserved
	</div>
</div>
</body>
</html>