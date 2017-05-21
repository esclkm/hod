<?php

/**
 * Contact Plugin for Cotonti CMF (Russian Localization)
 * @version 2.00
 * @author Cotonti Team
 * @copyright (c) Cotonti Team 2008-2014
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL');

/**
 * Plugin Config
 */

$L['cfg_email'] = 'E-mail';
$L['cfg_email_hint'] = '(оставить пустым для использования E-mail\'а администратора)';

$L['cfg_template'] = 'Шаблон письма';
$L['cfg_template_hint'] = 'Используемые переменные: {$sitetitle}, {$siteurl}, {$name}, {$phone}, {$addr}, {$date}';
$L['info_desc'] = 'Форма обратной связи с отправкой на E-mail и записью сообщений в базу данных в футере сайта';


$L['contact_bottom_message_sent'] = 'Заявка отправлена. Наш менеджер свяжется с вами в ближайшее время.';

$L['contact_bottom_nophone'] = "Телефон не указан или указан неверно";
$L['contact_bottom_noaddr'] = "Email не указан или указан неверно";

$R['contact_bottom_message'] = <<<TXT
{\$sitetitle} - {\$siteurl}
Заявка с сайта!
Имя: {\$name}
Адрес: {\$addr}	
Дата: {\$date}		
{\$text}	
TXT;
