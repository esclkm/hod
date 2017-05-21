<?php

/* ====================
  [BEGIN_COT_EXT]
  Hooks=ajax
  [END_COT_EXT]
  ==================== */

/**
 * Contact Plugin for Cotonti CMF
 *
 * @package contact_bottom
 * @version 2.1.0
 * @author Cotonti Team
 * @copyright (c) Cotonti Team 2008-2014
 * @license BSD
 */
defined('COT_CODE') or die('Wrong URL');


function getUrl() {
  $url  = @( $_SERVER["HTTPS"] != 'on' ) ? 'http://'.$_SERVER["SERVER_NAME"] :  'https://'.$_SERVER["SERVER_NAME"];
  $url .= ( $_SERVER["SERVER_PORT"] != 80 ) ? ":".$_SERVER["SERVER_PORT"] : "";
  $url .= $_SERVER["REQUEST_URI"];
  $url .= "#callForMeasure";
  return $url;
}  

require_once cot_langfile('contact_bottom', 'plug');

if (isset($cot_captcha))
{
	if (!function_exists(cot_captcha_generate))
	{

		function cot_captcha_generate($func_index = 0)
		{
			global $cot_captcha;
			if (!empty($cot_captcha[$func_index]))
			{
				$captcha = $cot_captcha[$func_index] . '_generate';
				return $captcha();
			}
			return false;
		}

	}
	if (!function_exists(cot_captcha_validate))
	{

		function cot_captcha_validate($verify = 0, $func_index = 0)
		{
			global $cot_captcha;
			if (!empty($cot_captcha[$func_index]))
			{
				$captcha = $cot_captcha[$func_index] . '_validate';
				return $captcha($verify);
			}
			return false;
		}

	}
}

$cb_errortext = '';
$cb_successtext = '';
cot_sendheaders();

//Import the variables
$rcontact_bottom['name'] = cot_import('rcb_name', 'P', 'TXT');
$rcontact_bottom['addr'] = cot_import('rcb_addr', 'P', 'TXT');
$rcontact_bottom['phone'] = cot_import('rcb_phone', 'P', 'TXT');
$rcontact_bottom['text'] = cot_import('rcb_text', 'P', 'TXT');
$rcontact_bottom['date'] = (int) $sys['now'];		

if (isset($cot_captcha) && $cfg['plugin']['contact_bottom']['captcha'])
{
	$rverify = cot_import('rverify', 'P', 'TXT');
	if (!cot_captcha_validate($rverify))
	{
		$cb_errortext = $L['captcha_verification_failed'];
	}
}

if (empty($rcontact_bottom['addr']) && cot_check_email($rcontact_bottom['addr']))
{
	$cb_errortext = $L['contact_bottom_noaddr'];
}

if (empty($cb_errortext))
{
	$semail = (!empty($cfg['plugin']['contact_bottom']['email'])) ? $cfg['plugin']['contact_bottom']['email'] : $cfg['adminemail'];

	$headers = ("From: \"" . $semail . "\" <" . $cfg["maintitle"] . ">\n");
	$context = array(
		'sitetitle' => $cfg["maintitle"],
		'siteurl' => $cfg['mainurl'],
		'name' => $rcontact_bottom['name'],
		'addr' => $rcontact_bottom['addr'],
		'phone' => $rcontact_bottom['phone'],
		'text' => $rcontact_bottom['text'],
		'date' => cot_date('date_full', $rcontact_bottom['date'])
	);

	$rtextm = cot_rc(empty($cfg['plugin']['contact_bottom']['template']) ? $R['contact_bottom_message'] : $cfg['plugin']['contact_bottom']['template'], $context);
	cot_mail($semail, "Новое обращение " . $rcontact_bottom['addr'], $rtextm, $headers);

	$cb_successtext = $L['contact_bottom_message_sent'];
	echo json_encode(array('status' => 'OK', 'message' => $cb_successtext));
}	
else
{
	echo json_encode(array('status' => 'error', 'message' => $cb_errortext));
}