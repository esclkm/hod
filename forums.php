<?php
/**
 * Forums root-level redirector for backwards compatibility
 *
 * @package Cotonti
 * @version 0.9.4
 * @author Neocrome, Cotonti Team
 * @copyright Copyright (c) Cotonti Team 2008-2011
 * @license BSD
 * @deprecated Deprecated since Cotonti Siena
 */

$_GET['e'] = 'forums';

require 'index.php';

?>