<?php

/**
 * landingstructure for Cotonti CMF
 *
 * @version 1.00
 * @author	esclkm
 * @copyright (c) 2013 esclkm
 */
defined('COT_CODE') or die('Wrong URL');

/* @var $db CotDB */
/* @var $cache Cache */
/* @var $t Xtemplate */

global $db_mavatars, $db_x, $cfg, $R;

cot::$db->registerTable('lstr');

cot_extrafields_register_table('lstr');

require_once cot_langfile('landingstructure');

require_once cot_incfile('uploads');
require_once cot_incfile('forms');

class landing 
{
    private $structure = array();

    function __construct($id = null)
    {
            global $db, $db_lstr;
            $this->loadDB($id);
    }

    public function loadDB($id = null)
    {
        global $db, $db_lstr;
        $this->structure = array();
        $where = "1";
        if ((int) $id > 0) {
            $where = "str_id=" . (int) $id;
        }
        $lstrs = $db->query("SELECT * FROM $db_lstr WHERE $where ORDER BY str_order ASC")->fetchAll();
        foreach ($lstrs as $lstr) {
            $this->structure[$lstr['str_id']] = $lstr;
        }
    }
/*
`str_order` int(11) NOT NULL,
`str_menutitle` varchar(255) collate utf8_unicode_ci,
`str_menuorder` int(11) NOT NULL,
`str_menulink` varchar(255) collate utf8_unicode_ci,
`str_classes_main` varchar(255) collate utf8_unicode_ci,
`str_classes_add` varchar(255) collate utf8_unicode_ci,
`str_title` varchar(255) collate utf8_unicode_ci,
`str_callback` varchar(255) collate utf8_unicode_ci,
    `str_params` TEXT collate utf8_unicode_ci NOT NULL,
    */
    public function insert($data)
    {
        global $db, $db_lstr;
        $db_ins['str_order'] = cot_import($data['str_order'], 'D', 'INT');
        $db_ins['str_menutitle'] = cot_import($data['str_menutitle'], 'D', 'TXT');
        $db_ins['str_menuorder'] = cot_import($data['str_menuorder'], 'D', 'INT');
        $db_ins['str_menulink'] = cot_import($data['str_menulink'], 'D', 'TXT');
        $db_ins['str_classes_main'] = cot_import($data['str_classes_main'], 'D', 'TXT');
        $db_ins['str_classes_add'] = cot_import($data['str_classes_add'], 'D', 'TXT');
        $db_ins['str_title'] = cot_import($data['str_title'], 'D', 'TXT');
        $db_ins['str_callback'] = cot_import($data['str_callback'], 'D', 'TXT');
        $db_ins['str_params'] = cot_import($data['str_params'], 'D', 'HTM');

        $db->insert($db_lstr, $db_ins);
    }
    public function update($id, $data)
    {
        global $db, $db_lstr;
        $db_upd['str_order'] = cot_import($data['str_order'], 'D', 'INT');
        $db_upd['str_menutitle'] = cot_import($data['str_menutitle'], 'D', 'TXT');
        $db_upd['str_menuorder'] = cot_import($data['str_menuorder'], 'D', 'INT');
        $db_upd['str_menulink'] = cot_import($data['str_menulink'], 'D', 'TXT');
        $db_upd['str_classes_main'] = cot_import($data['str_classes_main'], 'D', 'TXT');
        $db_upd['str_classes_add'] = cot_import($data['str_classes_add'], 'D', 'TXT');
        $db_upd['str_title'] = cot_import($data['str_title'], 'D', 'TXT');
        $db_upd['str_callback'] = cot_import($data['str_callback'], 'D', 'TXT');
        $db_upd['str_params'] = cot_import($data['str_params'], 'D', 'HTM');

        $db->update($db_lstr, $db_upd, "str_id=".(int)$id);
        $this->structure[$id]=$db_upd;
    }

    public function delete($id)
    {
        global $db, $db_lstr;
        $db->delete($db_lstr, "str_id=".(int)$id);
        unset($this->structure[$id]);
    }

    public function listedit($t, $block = "MAIN")
    {
        foreach($this->structure as $id => $row)
        {
            $t->assign(array(
		'ID' => $id,
                'ORDER' => $row['str_order'],
                'ORDER_INP' => cot_inputbox('text', 'str_order['.$id.']', $row['str_order']),
                'MENUTITLE' => $row['str_menutitle'],
                'MENUTITLE_INP' => cot_inputbox('text', 'str_menutitle['.$id.']', $row['str_menutitle']),
                'MENUORDER' => $row['str_menuorder'],
                'MENUORDER_INP' => cot_inputbox('text', 'str_menuorder['.$id.']', $row['str_menuorder']),
                'MENULINK' => $row['str_menulink'],
                'MENULINK_INP' => cot_inputbox('text', 'str_menulink['.$id.']', $row['str_menulink']),
                'CLASSES_MAIN' => $row['str_classes_main'],
                'CLASSES_MAIN_INP' => cot_inputbox('text', 'str_classes_main['.$id.']', $row['str_classes_main']),
                'CLASSES_ADD' => $row['str_classes_add'],
                'CLASSES_ADD_INP' => cot_inputbox('text', 'str_classes_add['.$id.']', $row['str_classes_add']),
                'TITLE' => $row['str_title'],
                'TITLE_INP' => cot_inputbox('text', 'str_title['.$id.']', $row['str_title']),
                'CALLBACK' => $row['str_callback'],
                'CALLBACK_INP' => cot_inputbox('text', 'str_callback['.$id.']', $row['str_callback']),
                'PARAMS' => $row['str_params'],
                'PARAMS_INP' => cot_inputbox('text', 'str_params['.$id.']', $row['str_params']),
		'PARAMS_TEXT' => cot_textarea('str_params['.$id.']',  $row['str_params'], 3, 60, ''),
		'EDIT' => cot_url('admin', 'm=other&p=landingstructure&n=edit&id='.$id),
		'DELETE' => cot_url('admin', 'm=other&p=landingstructure&n=edit&a=delete&id='.$id),
                ));
            $t->parse($block.".ROW");
        }
    }
    public function exists($id)
    {
	return isset($this->structure[$id]);
    }
    public function editTags($id)
    {
        $row = $this->structure[$id];

        return array(
	    'ID' => $id,
            'ORDER' => $row['str_order'],
            'ORDER_INP' => cot_inputbox('text', 'str_order', $row['str_order']),
            'MENUTITLE' => $row['str_menutitle'],
            'MENUTITLE_INP' => cot_inputbox('text', 'str_menutitle', $row['str_menutitle']),
            'MENUORDER' => $row['str_menuorder'],
            'MENUORDER_INP' => cot_inputbox('text', 'str_menuorder', $row['str_menuorder']),
            'MENULINK' => $row['str_menulink'],
            'MENULINK_INP' => cot_inputbox('text', 'str_menulink', $row['str_menulink']),
            'CLASSES_MAIN' => $row['str_classes_main'],
            'CLASSES_MAIN_INP' => cot_inputbox('text', 'str_classes_main', $row['str_classes_main']),
            'CLASSES_ADD' => $row['str_classes_add'],
            'CLASSES_ADD_INP' => cot_inputbox('text', 'str_classes_add', $row['str_classes_add']),
            'TITLE' => $row['str_title'],
            'TITLE_INP' => cot_inputbox('text', 'str_title', $row['str_title']),
            'CALLBACK' => $row['str_callback'],
            'CALLBACK_INP' => cot_inputbox('text', 'str_callback', $row['str_callback']),
            'PARAMS' => $row['str_params'],
            'PARAMS_INP' => cot_inputbox('text', 'str_params', $row['str_params']),
	    'PARAMS_TEXT' => cot_textarea('str_params',  $row['str_params'], 5, 60, ''),
            );
    }

    public function addTags()
    {

        return array(
            'ORDER_INP' => cot_inputbox('text', 'str_order', ''),
            'MENUTITLE_INP' => cot_inputbox('text', 'str_menutitle', ''),
            'MENUORDER_INP' => cot_inputbox('text', 'str_menuorder', ''),
            'MENULINK_INP' => cot_inputbox('text', 'str_menulink', ''),
            'CLASSES_MAIN_INP' => cot_inputbox('text', 'str_classes_main',''),
            'CLASSES_ADD_INP' => cot_inputbox('text', 'str_classes_add', ''),
            'TITLE_INP' => cot_inputbox('text', 'str_title', ''),
            'CALLBACK_INP' => cot_inputbox('text', 'str_callback', ''),
            'PARAMS_INP' => cot_inputbox('text', 'str_params', ''),
	    'PARAMS_TEXT' => cot_textarea('str_params',  '', 5, 60, ''),
            );
    }

    public function generate_nav($skin='')
    {
	$mskin = cot_tplfile('landingstructure.menu.'.$skin, 'plug');
        $t = new XTemplate($mskin);
	$num = 0;
        foreach($this->structure as $id => $row)
        {
	    $num++;
	    if(!empty($row['str_menutitle']))
	    {
		$link = (empty($row['str_menulink'])) ? $cfg['mainurl'].'/#slide'.$num : $row['str_menulink'];
		$t->assign(array(
		    'ORDER' => $row['str_order'],
		    'SLIDE_NUM' => $num,
		    'MENUTITLE' => $row['str_menutitle'],
		    'MENULINK' => $link,
		    ));
		$t->parse("MAIN.ROW");
	    }
        }
	$t->parse("MAIN");
	return $t->text("MAIN");    	
    }
    public function generate_slides($skin='')
    {
	$mskin = cot_tplfile('landingstructure.'.$skin, 'plug');
	
        $t = new XTemplate($mskin);
	$num = 0;
        foreach($this->structure as $id => $row)
        {
	    $num++;
	//    cot_print($row, !empty($row['str_callback']), function_exists($row['str_callback']));
            if(!empty($row['str_callback']) && function_exists($row['str_callback']))
            {
		
		$paramsTemp = json_decode($row['str_params'], true);
		$params = array();
		//pagefullbyid($id, $tpl  = '', $id_alias = 'auto')
		//pagetextbyid($id, $field = 'text', $id_alias = 'auto')
		/**
		    * Generates page list widget
		    * @param  string  $code       List code - need for pagination and template (template name: pageplus.$code.tpl)
		    * @param  integer $items      Number of items to show. 0 - all items
		    * @param  string  $order      Sorting order (SQL)
		    * @param  string  $condition  Custom selection filter (SQL)
		    * @param  string  $cat        Custom parent category code
		    * @param  boolean $sub        Include subcategories TRUE/FALSE
		    * @param  boolean $noself     Exclude the current page from the rowset for pages.
		    * @param  string  $blacklist  Category black list, semicolon separated
		    * @param  string  $whitelist  Category white list, semicolon separated
		    * @return string              Parsed HTML
		    */
		//function pp_list($code = '', $items = 0, $order = '', $condition = '', $cat = '', $sub = true, $noself = false, $blacklist = '', $whitelist = '')
		//contact_bottom($tpl = "")
	/*	switch ($row['str_callback'])
		{
		    case 'pagefullbyid':
			$paramsTemp['tpl'] = !empty($paramsTemp['tpl']) ? $paramsTemp['tpl'] : '';
			$params = array($paramsTemp['id'], $paramsTemp['tpl']);
			break;
		    case 'pagetextbyid':
			$paramsTemp['field'] = !empty($paramsTemp['field']) ? $paramsTemp['field'] : 'text';
			$params = array($paramsTemp['id'], $paramsTemp['field']);
			break;
		    case 'contact_bottom':
			$params = array($paramsTemp['tpl']);
			break;
		    case 'pp_list':
			$paramsTemp['items'] = (int)($paramsTemp['items']) > 0 ? $paramsTemp['items'] : 0;
			$paramsTemp['sub'] = !empty($paramsTemp['sub']) ? $paramsTemp['sub'] : true;
			$paramsTemp['noself'] = !empty($paramsTemp['noself']) ? $paramsTemp['noself'] : false;
			
			$params = array($paramsTemp['code'], $paramsTemp['items'], $paramsTemp['order'], 
			    $paramsTemp['condition'], $paramsTemp['cat'], $paramsTemp['sub'], $paramsTemp['noself'], 
			    $paramsTemp['blacklist'], $paramsTemp['whitelist']);
			break;
		    default:
			ksort($paramsTemp);
			$params =  array_values($paramsTemp);
			break;
		}*/
		$ref = new ReflectionFunction($row['str_callback']);
		/**/
		$params = array();
		foreach($ref->getParameters() as $currentParameter) 
		{
		    try 
		    {
			$defval = $currentParameter->getDefaultValue();
		    } catch (Exception $ex) 
		    {
			$defval = false;
		    }
		    $params[$currentParameter->getName()] = (isset($paramsTemp[$currentParameter->getName()])) ? $paramsTemp[$currentParameter->getName()] : $defval;
		}
//cot_print($functionParameters);

		$text = call_user_func_array($row['str_callback'], $params);
		
            }
            else
            {
		$text = cot_parse($defval['str_params'], true, 'html');
            }
	    if(!empty($text))
	    {
		$t->assign(array(
		    'ORDER' => $row['str_order'],
		    'SLIDE_NUM' => $num,
		    'SLIDE_ID' => 'slide'.$num,
		    'MENUTITLE' => $row['str_menutitle'],
		    'MENULINK' => $row['str_menulink'],
		    'CLASSES_MAIN' => $row['str_classes_main'],
		    'CLASSES_ADD' => $row['str_classes_add'],
		    'TITLE' => $row['str_title'],
		    'TEXT' => $text,
		    ));
		$t->parse("MAIN.ROW");
	    }
        }
	$t->parse("MAIN");
	return $t->text("MAIN");
    }


}