<?php
/**
 *      [PHPB2B] Copyright (C) 2007-2099, Ualink Inc. All Rights Reserved.
 *      The contents of this file are subject to the License; you may not use this file except in compliance with the License. 
 *
 *      @version $Revision: 2048 $
 */
$steps = array(
'1'=>$_software_intro,
'2'=>$_software_license,
'3'=>$_env_check,
'4'=>$_perm_check,
'5'=>$_db_setting,
'6'=>$_site_info_setting,
'7'=>$_install_complete
);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo $charset;?>">
<title><?php echo $steps[$step];?> - <?php echo $_software_name;?><?php echo $_install_quide;?></title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="../scripts/jquery.js"></script>
<script language="JavaScript" src="../scripts/langs/<?php echo $app_lang;?>.js"></script>
<script language="JavaScript" src="../scripts/install.js" charset="<?php echo $charset;?>"></script>
</head>
<body>
<div id="main">
<div id="ads"><?php echo $_software_name.$_b2b_market_system." V".PHPB2B_VERSION."(".PHPB2B_RELEASE.")";?></div>
<div id="top"><a href="http://www.phpb2b.com/" target="_blank"><?php echo $_official_site;?></a> | <a href="http://bbs.phpb2b.com/" target="_blank"><?php echo $_official_community;?></a></div>
	<div id="step-title"><?php echo $_install_step;?></div>
  <div id="left">
    <ul>
	<?php
	foreach($steps as $k=>$v)
	{
		$selected = $k == $step ? 'id="now"' : '';
	    echo "<li {$selected}>{$v}</li>";
	}
	?>
    </ul>
  </div>
  <div id="right">
    <h3><span><?php echo $step;?></span><?php echo $steps[$step];?></h3>