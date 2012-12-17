//<?php
/**
 * WebChangePwd
 * 
 * ウェブユーザーのパスワード変更スニペット
 *
 * @category 	snippet
 * @version 	1.0
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal	@properties 
 * @internal	@modx_category Login
 * @internal    @installset base
 */


# Created By Raymond Irving April, 2005
#::::::::::::::::::::::::::::::::::::::::
# Params:	
#
#	&tpl			- (Optional)
#		Chunk name or document id to use as a template
#				  
#	Note: Templats design:
#			section 1: change pwd template
#			section 2: notification template 
#
# Examples:
#
#	[[WebChangePwd? &tpl=`ChangePwd`]] 

# check if inside manager
// don't go any further when inside manager
if($modx->isBackend()) return '';

# Snippet customize settings
$tpl = isset($tpl) ? $tpl : '';

# System settings
$isPostBack = count($_POST) && isset($_POST['cmdwebchngpwd']);

# Start processing
$weblogin_path = $modx->config['base_path'] . 'assets/snippets/weblogin/';
global $output;
include_once("{$weblogin_path}weblogin.common.inc.php");
include_once("{$weblogin_path}webchangepwd.inc.php");

return $output;
