<%@ Page Language="VB" %>

<%@ Register Src="~/includes/MainNav01.ascx" TagName="MainNav01" TagPrefix="uc1" %>
<%@ Register Src="~/includes/MainNav02.ascx" TagName="MainNav02" TagPrefix="uc2" %>
<%@ Register Src="~/includes/Footer.ascx" TagName="Footer" TagPrefix="uc3" %>
<%@ Register Src="~/includes/NavRecipes.ascx" TagName="NavRecipes" TagPrefix="uc4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim mainMenu As Int32 = 2
        Dim subMenu As Int32 = 0

        MainNav01_1.Nav1Selection = mainMenu
        MainNav02_1.Nav1Selection = mainMenu
        NavRecipes1.Nav2Selection = subMenu
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Blueberry Recipes</title>
	<meta name="description" content="From cocktails to cookies, sauces to side dishes, the Ocean Spray Test Kitchen is always cooking up new ways to add zip to any meal." />

    <link href="/style.css" rel="stylesheet" type="text/css" />
    
    <link href="/css/arn-blueberry.css" type="text/css" rel="stylesheet" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/skin.css" />
	<link rel="stylesheet" type="text/css" href="/css/jquery.fancybox-1.3.1.css" />

	<script type="text/javascript" src="/js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="/js/jquery.jcarousel.min.js"></script>
	<script type="text/javascript" src="/js/jquery.fancybox-1.3.1.js"></script>
	<script type="text/javascript" src="/js/recipes.js"></script>
	
	<script type="text/javascript">
		jQuery(document).ready(function() {
    	jQuery('#mycarousel').jcarousel({
        	vertical: true,
        	scroll: 3
   			});
   			
   		$("#popup").fancybox({
				'width'				:  600,
				'height'			:  310,
				'autoScale'			: false,
				'transitionIn'		: 'none',
				'transitionOut'		: 'none',
				'type'				: 'iframe'
			});
		});
	</script>
    
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <form id="form1" runat="server">
    <br />
    <table border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td><img src="/images/ofl1.gif" width="42" height="12" border="0" /></td>
        <td><img src="/images/ofm1.gif" width="726" height="12" border="0" /></td>
        <td><img src="/images/ofr1.gif" width="43" height="12" border="0" /></td>
    </tr>
    <tr>
        <td rowspan="2" valign="top" background="/images/ofl2.gif"><img src="/images/ofl2s.gif" width="42" height="59" /></td>
        <td valign="top"><uc1:MainNav01 ID="MainNav01_1" runat="server" /></td>
        <td rowspan="2" valign="top" background="/images/ofr2.gif"><img src="/images/ofr2s.gif" width="43" height="52" /></td>
    </tr>
    <tr>
        <td>
            <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td valign="top" width="243" background="/images/ifb1.gif">
                    <uc4:NavRecipes ID="NavRecipes1" runat="server" />
              <a href="javascript:openWin2('/fall/ideas.html', 'toolbar=yes,status=yes,scrollbars=yes,location=no,resizable=yes,menubar=yes,width=720,height=600');"><img src="/images/promos/12_months.jpg" alt="Twelve Months of Cranberry" width="234" height="94" border="0" /></a><br />
                    <img src="/images/ifchd3.gif" width="243" height="36" border="0" /><br />
                    <img src="/images/one.gif" height="31" width="1" /><br />                </td>
                <td width="30" background="/images/ifvd.gif"><img src="/images/one.gif" width="1" height="1" /></td>
                <td width="453" valign="top" height="1050">
               
	<div id="container">
		<div id="products">
			<img src="/images/blueberry/product2.jpg" alt="" width="423" height="205" border="0" />
			<ul>
				<li>No artificial colors or flavors<br/></li>
				<li>Daily dose of Vitamin C in every glass<br /></li>
			</ul>
			<a id="popup" href="/recipes/CranberryClub/arnold_blueberry_popup.aspx" onClick="javascript:pageTracker._trackPageview('/OceanSpray_com/Event/News/Blueberry_Coupon/Save_One_Dollar');" target="_blank"><img src="/images/blueberry/btn_save.jpg" id="word" width="145" height="35" border="0"/></a>
		</div>
		<div id="scroll-wrapper">
			<div id="title"><a href="/pdfs/Blueberry/OceanSpray_Blueberry Print All.pdf" onClick="javascript:pageTracker._trackPageview('/OceanSpray_com/Event/News/Blueberry_Coupon/Print_All_Recipe');"><img src="/images/blueberry/allRecipes.jpg" alt="Print All Recipes" border="0" /></a><br />
				<img src="/images/blueberry/header_recipe4.jpg" id="RecipeName" alt="" height="19" width="336" border="0" style="padding: 5px 10px;" />  
			</div>
    	 <div id="slider">
    	 	<ul id="mycarousel" class="jcarousel jcarousel-skin-tango">
    	 		<li><img src="/images/blueberry/recipes/sm-recipe4_on.jpg"	onmouseover="toggleItem(this, 'sm-recipe4',4); switchInfo(4);" border="0" /></li>
    			<li><img src="/images/blueberry/recipes/sm-recipe1.jpg"		onmouseover="toggleItem(this, 'sm-recipe1',1); switchInfo(1);" border="0" /></li>
    			<li><img src="/images/blueberry/recipes/sm-recipe3.jpg"	 	onmouseover="toggleItem(this, 'sm-recipe3',3); switchInfo(3);" border="0" /></li>
    			<li><img src="/images/blueberry/recipes/sm-recipe2.jpg"    	onmouseover="toggleItem(this, 'sm-recipe2',2); switchInfo(2);" border="0" /></li>
    			<li><img src="/images/blueberry/recipes/sm-recipe5.jpg"    	onmouseover="toggleItem(this, 'sm-recipe5',5); switchInfo(5);" border="0" /></li>
    			<li><img src="/images/blueberry/recipes/sm-recipe6.jpg"	 	onmouseover="toggleItem(this, 'sm-recipe6',6); switchInfo(6);" border="0" /></li>
    			<li><img src="/images/blueberry/recipes/sm-recipe7.jpg"	 	onmouseover="toggleItem(this, 'sm-recipe7',7); switchInfo(7);" border="0" /></li>
   				<li><img src="/images/blueberry/recipes/sm-recipe8.jpg"	 	onmouseover="toggleItem(this, 'sm-recipe8',8); switchInfo(8);" border="0" /></li>
   			</ul>
        </div>
  		<div id="large">
   			<img id="RecipeImage" src="/images/blueberry/recipes/recipe4.jpg" alt="" width="306" height="180" border="0" />
   		</div>
	</div>
	<div id="recipeInfo">
		<div id="1" style="display: none;"> 
			<h4>FROZEN BLUEBERRY YOGURT POPS</h4> 
		<p><strong>INGREDIENTS:</strong><br />1 cup Ocean Spray&reg; Blueberry Juice Cocktail <br />1 cup Ocean Spray&reg; Fresh Blueberries, cleaned and rinsed <br />1 6-ounce container of fat-free vanilla yogurt<br />8 wooden craft sticks</p>
		<p><strong>DIRECTIONS:</strong><br />Combine all ingredients in blender. Cover; blend on high speed 15 to 20 seconds or until smooth. Pour into 8 frozen pop molds (2.5 ounces to 3 ounces each). Cover, insert craft sticks, and freeze for 2 hours or until completely firm. To serve, dip outsides of molds into warm water to loosen. <br /><br />Makes 8 pops.</p>
		</div>
		<div id="2" style="display: none;">
			<h4>BLUEBERRY BRAN MUFFINS</h4> 
		<p><strong>INGREDIENTS:</strong><br />1/2 cup sugar <br />1 egg <br />1/2 cup vegetable oil <br />1 cup buttermilk <br />1/2 cup Ocean Spray&reg; Blueberry Juice Cocktail <br />1 1/2 cups bran cereal <br />1 1/4 cups all-purpose flour <br />1 1/4 teaspoon baking soda <br />1/4 teaspoon salt <br />1 cup Ocean Spray&reg; Fresh Blueberries, cleaned and rinsed <br /></p>
		<p><strong>DIRECTIONS:</strong><br />Preheat oven to 400&ordm;F. Spray 12-cup muffin tin with non-stick baking spray. Combine sugar, egg and oil in a large bowl and stir together with a wire whisk. Add buttermilk and blueberry juice cocktail and stir with whisk until blended. Combine bran cereal, flour, baking soda and salt in a separate bowl. Add to juice mixture and stir just until dry ingredients are moistened. Fold in blueberries. Let mixture sit 20 minutes to allow cereal to soften. Scoop evenly into muffin cups. Bake for 18 to 20 minutes or until golden brown.<br /><br />Makes 12 muffins.</p>
		</div>
		<div id="3" style="display: none;">
			<h4>BLUEBERRY SMOOTHIES</h4> 
		<p><strong>INGREDIENTS:</strong><br />1 1/4 cups Ocean Spray&reg; Blueberry Juice Cocktail, chilled<br />3/4 cup Ocean Spray&reg; Fresh Blueberries, cleaned and rinsed<br />1 cup vanilla yogurt or vanilla frozen yogurt</p>
		<p><strong>DIRECTIONS:</strong><br />Combine blueberry juice cocktail and blueberries in a blender. Cover; blend on high speed until mixture is smooth. Add yogurt; blend until thoroughly combined.<br /><br />Makes 2 servings.</p>
		</div>
		
		<div id="4" > 
			<h4>BLUEBERRY-MINT LEMONADE</h4> 
		<p><strong>INGREDIENTS:</strong><br />7 cups Ocean Spray&reg; Blueberry Juice Cocktail<br />1/2 cup loosely packed fresh mint leaves, washed<br />1 12-ounce can frozen lemonade concentrate, thawed</p>
		<p><strong>DIRECTIONS:</strong><br />Combine 1/2 cup of the blueberry juice cocktail with the mint leaves in large (at least 2-quart) nonmetal pitcher or container. Crush the mint leaves against the side and bottom of the container with a wooden spoon. Let stand 5 minutes. Stir in remaining juice cocktail and the lemonade concentrate. Pour into glasses over ice. Garnish with extra mint leaves, if desired.<br /><br />Makes 8 servings.</p>
		</div>
        <div id="5" style="display: none;"> 
			<h4>PORK CHOPS WITH BLUEBERRY CRAISIN SAUCE</h4> 
		<p><strong>INGREDIENTS:</strong><br />1 teaspoon salt<br/>1 teaspoon dried thyme<br />1/4 teaspoon pepper<br />4 boneless pork loin chops<br />2 tablespoons vegetable oil<br />1/4 cup chopped red onion<br />1 teaspoon cornstarch<br />1 cup Ocean Spray® Blueberry Juice Cocktail<br />1/4 cup Ocean Spray® Craisins® Blueberry Juice Infused Dried Cranberries<br />2 tablespoons red wine vinegar</p>
		<p><strong>DIRECTIONS:</strong><br />Mix salt, thyme and pepper in small bowl; press mixture into both sides of pork chops. Heat oil in 10-inch skillet over medium-high heat. Add pork chops; cook for 4 minutes. Turn chops over; cover skillet. Cook for 4 to 5 minutes longer or until pork is well browned and internal temperature reaches 160º on a meat thermometer. Remove from skillet; cover to keep warm. Add onion to skillet. Cook for 1 minute, stirring frequently. Sprinkle cornstarch over onion; stir. Stir in remaining ingredients; bring to a full boil. Boil, stirring occasionally, for 4 to 5 minutes or until liquid is reduced to about half and mixture is thickened. Serve sauce over pork.<br /><br />Makes 4 servings.</p>
		</div>
		<div id="6" style="display: none;"> 
			<h4>BLUEBERRY LEMON CHEESECAKE BARS</h4> 
		<p><strong>INGREDIENTS:</strong><br /><br />CRUST<br />1 1/2 cups all-purpose flour<br />1 cup quick-cooking oats<br />1/2 cup powdered sugar<br />1 cup cold butter, cut into small cubes<br /><br />FILLING<br />1 cup Ocean Spray® Craisins® Blueberry Juice Infused Dried Cranberries<br />3/4 cup Ocean Spray® Craisins® Blueberry Juice Infused Dried Cranberries<br />1 8-ounce package cream cheese, softened<br />3/4 cup granulated sugar<br />1 teaspoon grated lemon zest<br />1/4 cup lemon juice<br />2 large eggs<br />2 tablespoons all-purpose flour</p>
		<p><strong>DIRECTIONS:</strong><br /><br />Preheat oven to 350°F.<br /><br />TO MAKE CRUST: Combine flour, oats and powdered sugar in large bowl. Using electric mixer, beat at low speed. Add butter; increase speed to medium-low. Beat until crumbly and mixture starts to stick together. Pat into bottom of 13 x 9-inch baking pan. Bake for 20 to 25 minutes or until starting to brown. TO MAKE FILLING: Meanwhile, combine sweetened dried cranberries and blueberry juice cocktail in 1-quart saucepan. Cook over medium-low heat, stirring occasionally, until juice is absorbed and cranberries are soft. Set aside to cool. Combine cream cheese and granulated sugar in large bowl. Beat at medium speed until smooth and creamy. Add lemon zest and lemon juice; beat, scraping side of bowl if needed, until smooth. Add eggs and flour; beat until smooth. Drop cranberry filling by small spoonfuls over crust; spread out. (Will not completely cover crust.) Pour lemon filling evenly over cranberry filling. Bake for 20 to 25 minutes or until set in center. Cool completely. Store covered in refrigerator. Sift 2 tablespoons powdered sugar over filling before serving. Run knife around edges of pan to loosen bars before cutting.
		</p>Makes 32 bars.</p>
		</div>
		<div id="7" style="display: none;"> 
			<h4>BLUEBERRY COSMO</h4> 
		<p><strong>INGREDIENTS:</strong><br />2 ounces Ocean Spray&reg; Blueberry Juice Cocktail, chilled<br />1 1/2 ounces vodka<br />1/2 ounce orange liqueur<br />1/2 ounce lime juice<br />1/4 teaspoon vermouth, if desired</p>
		<p><strong>DIRECTIONS:</strong><br />In a cocktail shaker filled halfway with ice, combine all ingredients and shake well. Strain mixture into a chilled stemmed cocktail glass.<br /><br />Makes 1 serving.</p>
		</div>
		<div id="8" style="display: none;"> 
			<h4>BLUE CHEESE AND BABY GREENS WITH<br />BLUEBERRY CRAISINS</h4> 
		<p><strong>INGREDIENTS:</strong><br /><br />SALAD<br />1/2 cup walnut pieces or halves<br />1/4 cup sugar<br />1 tablespoon water<br />1 5 to 6-ounce bag baby salad greens or spring greens<br />1 cup crumbled blue cheese<br />3/4 cup Ocean Spray® Blueberry Juice Cocktail<br /><br />DRESSING<br />2 tablespoons sugar<br />2 tablespoons Ocean Spray® Craisins® Blueberry Juice Infused Dried Cranberries<br />2 tablespoons raspberry vinegar or red wine vinegar<br />1 teaspoon Dijon mustard<br />1/8 teaspoon salt<br />1/4 cup vegetable oil</p>        
		<p><strong>DIRECTIONS:</strong><br />TO MAKE SALAD: Combine walnuts, sugar and water in 1-quart saucepan. Cook over medium-low heat, stirring constantly, until sugar melts and coats walnuts. Spread walnuts on waxed paper lightly sprayed with cooking spray; cool. Combine greens, cheese, sweetened dried cranberries and walnuts in large bowl. TO MAKE DRESSING: Whisk together all Dressing ingredients except oil in small bowl. Gradually whisk in oil until slightly thickened. Pour dressing over salad; toss to coat.
			<br /><br />Makes 6 servings.</p>
		</div>
		<a id="info" href="/pdfs/Blueberry/OceanSpray_Blueberry Mint Lemonade.pdf" onclick="pageTracker._trackPageview('/OceanSpray_com/Event/News/Blueberry_Coupon/Print_Recipe/Blueberry-Mint_Lemonade');" ><img src="/images/blueberry/printRecipe.jpg" alt="Print Recipe" height="23" width="78" border="0" /></a>

                
                </td>
            </tr>
            </table>
      </td>
    </tr>
    <tr>
        <td valign="top"><img src="/images/ofl3.gif" width="42" height="55" /></td>
        <td valign="top"><uc2:MainNav02 ID="MainNav02_1" runat="server" /></td>
        <td valign="top"><img src="/images/ofr3.gif" width="43" height="55" /></td>
    </tr>
    </table>
    <br />

    <uc3:Footer ID="Footer1" runat="server" />
    </form>
    
    <script type="text/javascript">
		var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
		document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
	</script>
	<script type="text/javascript">
		var pageTracker = _gat._getTracker("UA-4210218-3");
		pageTracker._initData();
		pageTracker._trackPageview('/OceanSpray_com/Page/News/Blueberry_Coupon/Landing');
	</script>

    
</body>
</html>
