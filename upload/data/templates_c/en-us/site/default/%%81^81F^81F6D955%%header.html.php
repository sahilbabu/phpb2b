<?php /* Smarty version 2.6.27, created on 2013-02-23 12:22:16
         compiled from default/header.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'strip_tags', 'default/header.html', 7, false),array('modifier', 'truncate_multi', 'default/header.html', 8, false),array('modifier', 'sprintf', 'default/header.html', 87, false),array('modifier', 'default', 'default/header.html', 120, false),array('function', 'the_url', 'default/header.html', 34, false),array('function', 'get_cache', 'default/header.html', 134, false),array('block', 'cacheless', 'default/header.html', 82, false),array('block', 'tag', 'default/header.html', 126, false),)), $this); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo $this->_tpl_vars['charset']; ?>
" />
<title><?php echo $this->_tpl_vars['page_title']; ?>
</title>
<base href="<?php echo $this->_tpl_vars['SiteUrl']; ?>
">
<meta name ="keywords" content="<?php echo ((is_array($_tmp=$this->_tpl_vars['metakeywords'])) ? $this->_run_mod_handler('strip_tags', true, $_tmp) : smarty_modifier_strip_tags($_tmp)); ?>
">
<meta name ="description" content="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['metadescription'])) ? $this->_run_mod_handler('strip_tags', true, $_tmp) : smarty_modifier_strip_tags($_tmp)))) ? $this->_run_mod_handler('truncate_multi', true, $_tmp, 100) : smarty_modifier_truncate_multi($_tmp, 100)); ?>
"> 
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['theme_img_path']; ?>
css/base.css" />
<link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['theme_img_path']; ?>
css/general.css" />
<link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['theme_img_path']; ?>
style.css" />
<?php if ($this->_tpl_vars['theme_style_name']): ?>
<link rel="stylesheet" id="css_extstyle" type="text/css" href="<?php echo $this->_tpl_vars['theme_img_path']; ?>
style/<?php echo $this->_tpl_vars['theme_style_name']; ?>
/style.css" />
<?php endif; ?>
<link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['theme_img_path']; ?>
css/layout.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="shorcut icon" type="image/x-ico" href="<?php echo $this->_tpl_vars['SiteUrl']; ?>
<?php echo $this->_tpl_vars['theme_img_path']; ?>
images/favicon.ico" />
<link rel="bookmark" type="image/x-ico" href="<?php echo $this->_tpl_vars['SiteUrl']; ?>
<?php echo $this->_tpl_vars['theme_img_path']; ?>
images/favicon.ico" />
<script src="scripts/jquery.js"></script>
<script language="javascript">
var cookiepre = '<?php echo $this->_tpl_vars['cookiepre']; ?>
';
var theme_style_name = '<?php echo $this->_tpl_vars['theme_style_name']; ?>
';
var cookiedomain = '<?php echo $this->_tpl_vars['cookiedomain']; ?>
';
var cookiepath = '<?php echo $this->_tpl_vars['cookiepath']; ?>
';
</script>
<script src="scripts/general.js"></script>
<script language="javascript">
var keywords_sample = "<?php echo $this->_tpl_vars['_keywords_sample']; ?>
";
var input_keywords = "<?php echo $this->_tpl_vars['_input_keywords']; ?>
";
var SiteUrl = "<?php echo $this->_tpl_vars['SiteUrl']; ?>
";
var show_ajax = "<?php echo $this->_tpl_vars['show_ajax']; ?>
";
var nav_id = "<?php echo $this->_tpl_vars['nav_id']; ?>
";
var search_url = "<?php echo smarty_function_the_url(array('module' => 'search'), $this);?>
";
var cook_style_name = getcookie("siteStyle");
var cook_style_href = '<?php echo $this->_tpl_vars['theme_img_path']; ?>
style/';
if(!isUndefined(cook_style_name) && cook_style_name!='') $('#css_extstyle').attr('href',cook_style_href + cook_style_name+'/style.css');
</script>
<?php echo '
<script>
$(document).ready(function() {
	if(show_ajax==1){
		$.ajaxSetup ({
			cache: false
		});
		$("#hdLoginBar").load(SiteUrl+"ajax.php?action=showLoginBar",
				function (responseText, textStatus, XMLHttpRequest){
				this;
		});
	}
	$(\'#style_switch a\').click(function(){
		var extra_style = $(this).attr(\'label\');
		if(extra_style){
			$(\'#css_extstyle\').attr(\'href\',cook_style_href+extra_style+\'/style.css\');
			setcookie("siteStyle", extra_style);
		}
	})
	$("#SearchKeyword").focus(function(){
		if($("#SearchKeyword").val()==keywords_sample){
			$("#SearchKeyword").val("").css(\'color\', \'#000000\')
			};
		}).blur(function(){
		if($("#SearchKeyword").val()==\'\'){
			$("#SearchKeyword").val(keywords_sample).css(\'color\', \'#ccc\')
			};
	});
	$("#BtnSearch").click(function(){
		if($(\'#SearchKeyword\').val()==keywords_sample) {alert(input_keywords);$(\'#SearchKeyword\').focus();return false;}
	});
	$("#BtnCompany").click(function(){
		if($(\'#SearchKeyword\').val()==keywords_sample) {alert(input_keywords);$(\'#SearchKeyword\').focus();return false;}
		$("#SearchFrm").attr("action",search_url);
		$("#hdAct").val("direct");
	});
})
</script>
'; ?>

</head>
<body id="bd_<?php echo @CURSCRIPT; ?>
">
<div id="header">
    <div class="headtop">
    <?php $this->_tag_stack[] = array('cacheless', array()); $_block_repeat=true;smarty_block_cacheless($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>
    <p class="headtopcon">
        <a class="index" href="javascript:;" onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('<?php echo $this->_tpl_vars['SiteUrl']; ?>
');"><?php echo $this->_tpl_vars['_set_home_page']; ?>
</a>
        <a href="<?php echo $this->_tpl_vars['_G']['REQUEST_URI']; ?>
" onclick="javascript:window.external.addFavorite(this.href, this.title);return false;" rel="sidebar" title="<?php echo $this->_tpl_vars['_G']['site_name']; ?>
"><?php echo $this->_tpl_vars['_add_favorite']; ?>
</a>
        <?php if ($this->_tpl_vars['pb_username'] != ""): ?>
        <span id="hdLoginBar"><em><?php echo ((is_array($_tmp=$this->_tpl_vars['_hello'])) ? $this->_run_mod_handler('sprintf', true, $_tmp, $this->_tpl_vars['pb_username']) : sprintf($_tmp, $this->_tpl_vars['pb_username'])); ?>
&nbsp;</em>
        <a href="redirect.php?url=/virtual-office/" target="_blank">[<?php echo $this->_tpl_vars['_my_office_room']; ?>
]</a>
        <?php if ($this->_tpl_vars['is_admin']): ?><a href="pb-admin/login.php" target="_admin">[<?php echo $this->_tpl_vars['_control_pannel']; ?>
]</a><?php endif; ?>
        <a href="logging.php?action=logout">[<?php echo $this->_tpl_vars['_login_out']; ?>
]</a></span>
        <?php else: ?>
        <span id="hdLoginBar"><em><?php echo ((is_array($_tmp=$this->_tpl_vars['_hello_welcome_to'])) ? $this->_run_mod_handler('sprintf', true, $_tmp, $this->_tpl_vars['_G']['site_name']) : sprintf($_tmp, $this->_tpl_vars['_G']['site_name'])); ?>
</em>
        <a href="logging.php">&nbsp;[<?php echo $this->_tpl_vars['_pls_login']; ?>
]</a>
        <a href="member.php" title="<?php echo $this->_tpl_vars['_register']; ?>
" ><strong>[<?php echo $this->_tpl_vars['_free']; ?>
 <?php echo $this->_tpl_vars['_register']; ?>
]</strong></a></span>
        <?php endif; ?>
        <a href="index.php?do=service" style="float:right;"><?php echo $this->_tpl_vars['_customer_service']; ?>
</a>
        <a href="index.php?do=offer&action=post" style="float:right;"><?php echo $this->_tpl_vars['_free_post']; ?>
</a>
        <a href="index.php?do=standard" style="float:right;"><?php echo $this->_tpl_vars['_standards']; ?>
</a>
    </p>
    <?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_cacheless($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?>
    </div>
    <div class="logo_search clearfix">
        <h1 id="logo"><a href="<?php echo $this->_tpl_vars['site_url']; ?>
"><img src="<?php echo $this->_tpl_vars['site_logo']; ?>
" alt="<?php echo $this->_tpl_vars['site_banner_word']; ?>
" /></a></h1>
        <div class="search_bar">
            <div class="search_nav">
                <ul>
                    <li id="topMenuProduct"><a href="index.php?do=product"><span><?php echo $this->_tpl_vars['_search_product']; ?>
</span></a></li>
                    <li id="topMenuCompany"><a href="index.php?do=company"><span><?php echo $this->_tpl_vars['_search_company']; ?>
</span></a></li>
                    <li id="topMenuOffer"><a href="index.php?do=offer"><span><?php echo $this->_tpl_vars['_search_offer']; ?>
</span></a></li>
                    <li id="topMenuNews"><a href="index.php?do=news"><span><?php echo $this->_tpl_vars['_search_news']; ?>
</span></a></li>
                </ul>
                <a href="<?php echo smarty_function_the_url(array('module' => 'search'), $this);?>
" class="fl lhighs"><?php echo $this->_tpl_vars['_adv_search']; ?>
</a>
            </div>
            <form name="search_frm" id="SearchFrm" method="get" action="index.php">
            <input type="hidden" name="do" id="hdDo" value="search" />
            <input type="hidden" name="action" id="hdAct" value="lists" />
            <input type="hidden" name="module" id="hdModule" value="offer" />
             <div class="search_panel">
                 <span class="search_input_box">
                    <input type="text" name="q" id="SearchKeyword" value="<?php echo ((is_array($_tmp=@$this->_tpl_vars['_G']['q'])) ? $this->_run_mod_handler('default', true, $_tmp, @$this->_tpl_vars['_keywords_sample']) : smarty_modifier_default($_tmp, @$this->_tpl_vars['_keywords_sample'])); ?>
" />
                  </span>
                  <span class="search_btn_box">
                  <button type="submit" id="BtnSearch" value="<?php echo $this->_tpl_vars['_search']; ?>
"><?php echo $this->_tpl_vars['_search']; ?>
</button>
                  <button type="submit" id="BtnCompany" value="<?php echo $this->_tpl_vars['_search']; ?>
"><?php echo $this->_tpl_vars['_company_direct']; ?>
</button>
                  </span>
                  <span class="history break underline"><strong><?php echo $this->_tpl_vars['_latest_search']; ?>
</strong><?php $this->_tag_stack[] = array('tag', array('row' => 3,'flag' => 0,'do' => ($this->_tpl_vars['do']))); $_block_repeat=true;smarty_block_tag($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?><?php echo $this->_tpl_vars['tag']['link']; ?>
<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_tag($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?></span> 
             </div>
            </form>
        </div>
    </div>
</div>
<div class="header_nav">    
    <div id="nav_inner">
        <ul><?php echo smarty_function_get_cache(array('name' => 'nav','echo' => 'y'), $this);?>
</ul>
	</div>
</div>