<?php

/* ====================
  [BEGIN_COT_EXT]
  Hooks=global
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

require_once cot_langfile('contact_bottom', 'plug');
require_once cot_incfile('forms');

cot_rc_add_file($cfg['plugins_dir'].'/contact_bottom/js/contact_bottom.js');

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
function contact_bottom($tpl = "")
{
	$mskin = cot_tplfile(array('contact_bottom', $tpl), 'plug');
	$tcb = new XTemplate($mskin);

	$tcb->assign(array(
		'CONTACT_FORM_SEND' => cot_url('index'),
		'CONTACT_FORM_NAME' => cot_inputbox('text', 'rcb_name', $rcontact_bottom['name'], 'class="form-control" placeholder="Имя"'),
		'CONTACT_FORM_PHONE' => cot_inputbox('text', 'rcb_phone', $rcontact_bottom['phone'], 'class="form-control"  placeholder="Телефон"'),
		'CONTACT_FORM_ADDR' => cot_inputbox('text', 'rcb_addr', $rcontact_bottom['addr'], 'class="form-control" placeholder="E-mail"'),
		'CONTACT_FORM_TEXT' => cot_textarea('rcb_text', $rcontact_bottom['text'], 5, 5, 'class="form-control" placeholder="Ваш вопрос или заявка"')
	));

	if (isset($cot_captcha) && $cfg['plugin']['contact_bottom']['captcha'])
	{
		$tcb->assign(array(
			'CONTACT_FORM_VERIFY_IMG' => cot_captcha_generate(),
			'CONTACT_FORM_VERIFY' => cot_inputbox('text', 'rverify', $rverify, 'id="rverify" size="20" class="form-control"')
		));
		$tcb->parse('MAIN.CAPTCHA');
	}
	$tcb->parse('MAIN');
	return $tcb->text('MAIN');
}
