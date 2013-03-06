<?php /* Smarty version 2.6.27, created on 2013-02-23 12:22:21
         compiled from default/footer.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'get_cache', 'default/footer.html', 3, false),array('function', 'mailto', 'default/footer.html', 7, false),array('function', 'im', 'default/footer.html', 9, false),array('block', 'userpage', 'default/footer.html', 4, false),)), $this); ?>
<div id="footer">
	<div class="ins"> 
	        <p id="f_language_bar"><?php echo smarty_function_get_cache(array('name' => 'language','image' => 'y','sep' => "&nbsp;",'echo' => 'y'), $this);?>
</p>
		<?php $this->_tag_stack[] = array('userpage', array('row' => 15,'sep' => "<span>|</span>")); $_block_repeat=true;smarty_block_userpage($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>
			<?php echo $this->_tpl_vars['page']['link']; ?>

		<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_userpage($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?>
		<p><?php echo $this->_tpl_vars['_G']['site_name']; ?>
 <?php echo $this->_tpl_vars['_copyright']; ?>
&copy;&nbsp;<?php echo $this->_tpl_vars['_service_hotline']; ?>
 <?php echo $this->_tpl_vars['service_tel']; ?>
&nbsp;<?php echo $this->_tpl_vars['_service_email']; ?>
:<?php echo smarty_function_mailto(array('text' => ($this->_tpl_vars['service_email']),'address' => ($this->_tpl_vars['service_email']),'encode' => 'javascript'), $this);?>
&nbsp;<a href="javascript:;" onclick="<?php echo '$(\'html, body\').animate({scrollTop: \'0px\'}, 300);return false;'; ?>
"><?php echo $this->_tpl_vars['_go_top']; ?>
</a>     </p>
		<?php if ($this->_tpl_vars['icp_number']): ?><p><?php echo $this->_tpl_vars['icp_number']; ?>
</p><?php endif; ?>
		<p class="footer_im"><?php echo smarty_function_im(array('type' => 'qq','id' => ($this->_tpl_vars['service_qq'])), $this);?>
<?php echo smarty_function_im(array('type' => 'msn','id' => ($this->_tpl_vars['service_msn'])), $this);?>
</p>
		<p>Powered by <?php echo $this->_tpl_vars['_soft_name']; ?>
 &copy;2007-2012 <a href="http://www.phpb2b.com/" target="_blank"><strong>Ualink</strong></a> Inc.</p>
		<?php if ($this->_tpl_vars['site_theme_styles']): ?>
		<ul id="style_switch">
			<?php $_from = $this->_tpl_vars['site_theme_styles']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
				<li><a style="background:<?php echo $this->_tpl_vars['item']['background']; ?>
;" label="<?php echo $this->_tpl_vars['item']['label']; ?>
" title="<?php echo $this->_tpl_vars['item']['name']; ?>
" href="javascript:;"><?php echo $this->_tpl_vars['item']['name']; ?>
</a></li>
			<?php endforeach; endif; unset($_from); ?>
		</ul>
		<?php endif; ?>
	</div>
</div>
</body>
</html>