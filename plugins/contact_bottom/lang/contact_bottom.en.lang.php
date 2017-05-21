<?php

/**
 * Contact Plugin for Cotonti CMF (English Localization)
 * @version 2.00
 * @author Cotonti Team
 * @copyright (c) Cotonti Team 2008-2014
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL');

/**
 * Plugin Config
 */

$L['cfg_email'] = 'Email';
$L['cfg_email_hint'] = '(leave empty to use admin email)';
$L['cfg_minchars'] = 'Min. chars in message';
$L['cfg_map'] = 'Map';
$L['cfg_about'] = 'About';
$L['cfg_save'] = 'Save method';
$L['cfg_save_params'] = 'e-mail,database,e-mail + database';
$L['cfg_template'] = 'Email template';
$L['cfg_template_hint'] = 'Using variables: {$sitetitle}, {$siteurl}, {$author}, {$email}, {$subject}, {$text}, {$extra}, {$extraXXXX}, {$extraXXXX_title}';
$L['info_desc'] = 'Contact form for user feedback delivered via email and recorded in database';

/**
 * Plugin Admin
 */

$L['contact_bottom_view'] = 'View message';
$L['contact_bottom_markread'] = 'Mark as read';
$L['contact_bottom_read'] = 'Read';
$L['contact_bottom_markunread'] = 'Mark as unread';
$L['contact_bottom_unread'] = 'Unread';
$L['contact_bottom_new'] = 'new message';
$L['contact_bottom_shortnew'] = 'new';
$L['contact_bottom_sent'] = 'Last reply';
$L['contact_bottom_nosubject'] = 'No subject';

/**
 * Plugin Title & Subtitle
 */

$L['contact_bottom_title'] = 'Contact us';
$L['contact_bottom_subtitle'] = 'Contact info';

/**
 * Plugin Body
 */

$L['contact_bottom_headercontact_bottom'] = 'Contact';
$Ls['contact_bottom_headercontact_bottom'] = "contact_bottom message,contact_bottom messages";
$L['contact_bottom_entrytooshort'] = 'Message too short or missing';
$L['contact_bottom_noname'] = 'Name missing';
$L['contact_bottom_emailnotvalid'] = 'Incorrect email address';
$L['contact_bottom_message_sent'] = 'Message sent';
