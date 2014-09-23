var loadedImages  = new Array();
var swappedImages = new Array();

function swapHero() 
{
    var heroImg = document.getElementById("heroImg");

    var num = Math.floor(Math.random() * 15)

    if (num == 0) 
    {
        num++;
        heroImg.src = 'images/grower' + num + '.jpg';
    }
    else
        heroImg.src = 'images/grower' + num + '.jpg';

    //alert(num);
}

function switchInfo(div)
	{
		if (document.getElementById('1'))
		{
			var option=['1','2','3','4','5','6','7','8'];
			for(var i=0; i<option.length; i++)
				{ obj=document.getElementById(option[i]);
				obj.style.display=(option[i]==div)? "block" : "none"; 
				}
		}
	}

function LoadImages ()
{
    var i, j, k;
    if (document.images) {
        k = loadedImages.length;
        for (i in LoadImages.arguments) {
            for (j in LoadImages.arguments[i]) {
                loadedImages[k] = new Image;
                loadedImages[k].src = j;
                k++;
            }
        }
    }
}

function SwapImage (imgName, imgSrc)
{
    var x, i;
    if ((x = document.images[imgName]) != null) {
        i = swappedImages.length;
        swappedImages[i] = new Image;
        swappedImages[i].name = x.name;
        swappedImages[i].src = x.src;
        x.src = imgSrc;
    }
}

function SwapImgRestore ()
{
    var i, x;
    if (document.images) {
        while (i = swappedImages.shift()) {
            x = document.images[i.name];
            x.src = i.src;
        }
    }
}

// pop-up window
function openWin(aFile, aWidth, aHeight, scrollBar)
{
    aWin = window.open(aFile, 'popWin', 'personalbar=no,toolbar=no,status=yes,scrollbars='+scrollBar+',location=no,resizable=yes,menubar=no,width='+ aWidth +',height='+ aHeight);
    aWin.focus();
}

// pop-up window
function openWin2(aFile, winParam)
{
    aWin = window.open(aFile, 'popWin', winParam);
    aWin.focus();
}

function toggleItem(el, id, intId) {
    //Initialize small cards to faded image         
    var images = document.getElementById("scroll-wrapper").getElementsByTagName("img");
    for (i = 0; i < images.length; i++) {
        images[i].src = images[i].src.replace(/_on/, '');
    }
    //Set source of small cards
    var source = el.src;
    el.src = '../images/blueberry/recipes/' + id + '_on.jpg';
    //Set source of main card 
    var recipeCard = document.getElementById("RecipeImage");
    var recipeName = document.getElementById("RecipeName");
    var recipeCardLink = document.getElementById("info");
    recipeCard.src = '../images/blueberry/recipes/recipe' + intId + '.jpg';
    recipeName.src = '../images/blueberry/header_recipe' + intId + '.jpg';

    switch (intId) {
        case 1:
            recipeCardLink.href = "/pdfs/Blueberry/OceanSpray_Frozen Blueberry Yogurt Pops.pdf";
            recipeCard.alt = "Frozen Blueberry Yogurt Pops";
            recipeCardLink.onclick = function(){pageTracker._trackPageview('/OceanSpray_com/Event/News/Blueberry_Coupon/Print_Recipe/Frozen_Blueberry_Yogurt_Pops');};
            break;
        case 2:
            recipeCardLink.href = "/pdfs/Blueberry/OceanSpray_Blueberry Bran Muffins.pdf";
            recipeCard.alt = "Blueberry Bran Muffins";
            recipeCardLink.onclick = function(){pageTracker._trackPageview('/OceanSpray_com/Event/News/Blueberry_Coupon/Print_Recipe/Blueberry_Bran_Muffins');};
            break;
        case 3:
            recipeCardLink.href = "/pdfs/Blueberry/OceanSpray_Blueberry Smoothies.pdf";
            recipeCard.alt = "Blueberry Smoothies";
            recipeCardLink.onclick = function(){pageTracker._trackPageview('/OceanSpray_com/Event/News/Blueberry_Coupon/Print_Recipe/Blueberry_Smoothies');};
           	break;
       // case 4:
       //     recipeCardLink.href = "/pdfs/Blueberry/OceanSpray_Blueberry Mint Lemonade.pdf";
       //     recipeCard.alt = "Blueberry-Mint-Lemonade";
       //     recipeCardLink.onclick = "onClick='javascript:pageTracker._trackPageview('/OceanSpray_com/Event/News/Blueberry_Coupon/Print_Recipe/Blueberry-Mint_Lemonade');";
       //     break;
        case 5:
            recipeCardLink.href = "/pdfs/Blueberry/OceanSpray_Pork Chops.pdf";
            recipeCard.alt = "Pork Chop Blueberry Craisin Sauce";
            recipeCardLink.onclick = function(){pageTracker._trackPageview('/OceanSpray_com/Event/News/Blueberry_Coupon/Print_Recipe/Pork_Chops_with_Blueberry_Craisin_Sauce');};
            break;
        case 6:
            recipeCardLink.href = "/pdfs/Blueberry/OceanSpray_Blueberry Lemon Cheesecake Bars.pdf";
            recipeCard.alt = "Blueberry-Lemon Cheesecake Bars";
            recipeCardLink.onclick = function(){pageTracker._trackPageview('/OceanSpray_com/Event/News/Blueberry_Coupon/Print_Recipe/Blueberry_Lemon_Cheesecake_Bars');};
            break;
        case 7:
            recipeCardLink.href = "/pdfs/Blueberry/OceanSpray_Blueberry Cosmo.pdf";
            recipeCard.alt = "Blueberry Cosmo";
            recipeCardLink.onclick = function(){pageTracker._trackPageview('/OceanSpray_com/Event/News/Blueberry_Coupon/Print_Recipe/Blueberry_Cosmo');};
            break;
        case 8:
            recipeCardLink.href = "/pdfs/Blueberry/OceanSpray_Bluecheese Greens.pdf";
            recipeCard.alt = "Blue Cheese & Baby Greens with Craisins";
            recipeCardLink.onclick = function(){pageTracker._trackPageview('/OceanSpray_com/Event/News/Blueberry_Coupon/Print_Recipe/Pork_Chops_with_Blueberry_Craisin_Sauce');};
            break;
        default:
            recipeCardLink.href = "/pdfs/Blueberry/OceanSpray_Blueberry Mint Lemonade.pdf";
           	recipeCard.alt = "Blueberry-Mint Lemonade";
            recipeCardLink.onclick = function(){pageTracker._trackPageview('/OceanSpray_com/Event/News/Blueberry_Coupon/Print_Recipe/Blueberry-Mint_Lemonade');};
        }
}

var mainNavImages = new Array(
    '/images/home_h.gif', '/images/prod_h.gif', '/images/reci_h.gif', '/images/heal_h.gif',
    '/images/news_h.gif', '/images/abus_h.gif', '/images/cran_h.gif', '/images/kids_h.gif',
	'/images/home/nav1_h.gif', '/images/home/nav2_h.gif', '/images/home/nav3_h.gif',
	'/images/home/nav4_h.gif', '/images/home/nav5_h.gif'
);

var prodNavImages = new Array(
    '/images/p_juic_n.gif', '/images/p_juic_h.gif', '/images/p_juic_pn.gif', '/images/p_juic_ph.gif',
    '/images/p_prdc_n.gif', '/images/p_prdc_h.gif', '/images/p_prdc_pn.gif', '/images/p_prdc_ph.gif',
    '/images/p_cras_n.gif', '/images/p_cras_h.gif', '/images/p_cras_pn.gif', '/images/p_cras_ph.gif',
    '/images/p_sauc_n.gif', '/images/p_sauc_h.gif', '/images/p_sauc_pn.gif', '/images/p_sauc_ph.gif'
);

var reciNavImages = new Array(
    '/images/r_newr_n.gif', '/images/r_newr_h.gif', '/images/r_newr_pn.gif', '/images/r_newr_ph.gif',
    '/images/r_mpop_n.gif', '/images/r_mpop_h.gif', '/images/r_mpop_pn.gif', '/images/r_mpop_ph.gif',
    '/images/r_chef_n.gif', '/images/r_chef_h.gif', '/images/r_chef_pn.gif', '/images/r_chef_ph.gif',
    '/images/r_cat1_n.gif', '/images/r_cat1_h.gif', '/images/r_cat1_pn.gif', '/images/r_cat1_ph.gif',
    '/images/r_cat2_n.gif', '/images/r_cat2_h.gif', '/images/r_cat2_pn.gif', '/images/r_cat2_ph.gif',
    '/images/r_cat3_n.gif', '/images/r_cat3_h.gif', '/images/r_cat3_pn.gif', '/images/r_cat3_ph.gif',
    '/images/r_cat4_n.gif', '/images/r_cat4_h.gif', '/images/r_cat4_pn.gif', '/images/r_cat4_ph.gif',
    '/images/r_cat5_n.gif', '/images/r_cat5_h.gif', '/images/r_cat5_pn.gif', '/images/r_cat5_ph.gif',
    '/images/r_cat6_n.gif', '/images/r_cat6_h.gif', '/images/r_cat6_pn.gif', '/images/r_cat6_ph.gif',
    '/images/r_cat7_n.gif', '/images/r_cat7_h.gif', '/images/r_cat7_pn.gif', '/images/r_cat7_ph.gif',
    '/images/r_srch_n.gif', '/images/r_srch_h.gif', '/images/r_srch_pn.gif', '/images/r_srch_ph.gif'
);

var hlthNavImages = new Array(
    '/images/h_chth_n.gif', '/images/h_chth_h.gif', '/images/h_chth_pn.gif', '/images/h_chth_ph.gif',
    '/images/h_rsch_n.gif', '/images/h_rsch_h.gif', '/images/h_rsch_pn.gif', '/images/h_rsch_ph.gif',
    '/images/h_ghth_n.gif', '/images/h_ghth_h.gif', '/images/h_ghth_pn.gif', '/images/h_ghth_ph.gif'
);

var newsNavImages = new Array(
    '/images/n_prss_n.gif', '/images/n_prss_h.gif', '/images/n_prss_pn.gif', '/images/n_prss_ph.gif',
    '/images/n_mdia_n.gif', '/images/n_mdia_h.gif', '/images/n_mdia_pn.gif', '/images/n_mdia_ph.gif',
    '/images/n_prmo_n.gif', '/images/n_prmo_h.gif', '/images/n_prmo_pn.gif', '/images/n_prmo_ph.gif',
    '/images/n_evnt_n.gif', '/images/n_evnt_h.gif', '/images/n_evnt_pn.gif', '/images/n_evnt_ph.gif',
    '/images/n_advs_n.gif', '/images/n_advs_h.gif', '/images/n_advs_pn.gif', '/images/n_advs_ph.gif',
    '/images/n_cntr_n.gif', '/images/n_cntr_h.gif', '/images/n_cntr_pn.gif', '/images/n_cntr_ph.gif'
);

var abutNavImages = new Array(
    '/images/a_ovrv_n.gif', '/images/a_ovrv_h.gif', '/images/a_ovrv_pn.gif', '/images/a_ovrv_ph.gif',
    '/images/a_chst_n.gif', '/images/a_chst_h.gif', '/images/a_chst_pn.gif', '/images/a_chst_ph.gif',
    '/images/a_ohst_n.gif', '/images/a_ohst_h.gif', '/images/a_ohst_pn.gif', '/images/a_ohst_ph.gif',
    '/images/a_abog_n.gif', '/images/a_abog_h.gif', '/images/a_abog_pn.gif', '/images/a_abog_ph.gif',
    '/images/a_fdsd_n.gif', '/images/a_fdsd_h.gif', '/images/a_fdsd_pn.gif', '/images/a_fdsd_ph.gif',
    '/images/a_ingr_n.gif', '/images/a_ingr_h.gif', '/images/a_ingr_pn.gif', '/images/a_ingr_ph.gif',
    '/images/a_intr_n.gif', '/images/a_intr_h.gif', '/images/a_intr_pn.gif', '/images/a_intr_ph.gif',
    '/images/a_cntc_n.gif', '/images/a_cntc_h.gif', '/images/a_cntc_pn.gif', '/images/a_cntc_ph.gif',
    '/images/a_carr_n.gif', '/images/a_carr_h.gif', '/images/a_carr_pn.gif', '/images/a_carr_ph.gif'
);

var clubNavImages = new Array(
    '/images/c_sign_n.gif', '/images/c_sign_h.gif', '/images/c_sign_pn.gif', '/images/c_sign_ph.gif',
    '/images/c_curr_n.gif', '/images/c_curr_h.gif', '/images/c_curr_pn.gif', '/images/c_curr_ph.gif',
    '/images/c_arch_n.gif', '/images/c_arch_h.gif', '/images/c_arch_pn.gif', '/images/c_arch_ph.gif',
    '/images/c_logn_n.gif', '/images/c_logn_h.gif', '/images/c_logn_pn.gif', '/images/c_logn_ph.gif'
);

var contNavImages = new Array(
    '/images/u_emal_n.gif', '/images/u_emal_h.gif', '/images/u_emal_pn.gif', '/images/u_emal_ph.gif',
    '/images/u_call_n.gif', '/images/u_call_h.gif', '/images/u_call_pn.gif', '/images/u_call_ph.gif',
    '/images/u_faqs_n.gif', '/images/u_faqs_h.gif', '/images/u_faqs_pn.gif', '/images/u_faqs_ph.gif',
    '/images/u_dirc_n.gif', '/images/u_dirc_h.gif', '/images/u_dirc_pn.gif', '/images/u_dirc_ph.gif',
    '/images/a_carr_n.gif', '/images/a_carr_h.gif', '/images/a_carr_pn.gif', '/images/a_carr_ph.gif'
);

