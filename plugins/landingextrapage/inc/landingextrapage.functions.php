<?php

defined('COT_CODE') or die('Wrong URL');


class landingextrapage 
{
    private $data = array();
    private $count = 2;
    function __construct($data = '')
    {
	if(is_string($data))
	{
	    $data = json_decode($json, true);
	    $this->count = isset($data['count']) ? $data['count'] : 2;
	    $this->data = isset($data['elems']) ? $data['elems'] : array();
	}
    }
    
    public function save()
    {
	$data = array('count' => $this->count, 'data' => $this->data);
	return json_encode($data);
    }
    
    function output()
    {
	$mskin = cot_tplfile('landingextrapage', 'plug');
	$t = new XTemplate($mskin);
	$i = 0;
	foreach ($this->data as $extra)
	{
	    $i++;
	    $ext = pathinfo($extra['img'], PATHINFO_EXTENSION);
	    $type = (in_array($ext, array('jpeg', 'jpg', 'png', 'gif'))) ? 'image' : 'icon';
	    $t->assign(array(
		'IMG_TYPE' => $type,
		'NUM' => $i,
		'IMG' => $extra['img'],
		'TITLE' => $extra['title'],
		'TEXT' => cot_parse($extra['text'], true, 'html')
	    ));
	    $t->parse("MAIN.ROW");
	}
	$t->assign(array(
	    'ROW_COUNT' => $this->count
	));	
	$t->parse("MAIN");
	return $t->text('MAIN');
    }
    function editform()
    {
	$mskin = cot_tplfile('landingextrapage.edit', 'plug');
	$t = new XTemplate($mskin);
	$i = 0;
	foreach ($this->data as $extra)
	{
	    $i++;
	    $t->assign(array(
		'IMG_INP' => cot_inputbox('text', 'ximg['.$i.']', $extra['img']),
		'TITLE_INP' => cot_inputbox('text', 'xtitle['.$i.']', $extra['title']),
		'TEXT_INP' => cot_textarea('xtext['.$i.']',  $extra['text'], 3, 60, ''),
		'NUM' => $i,
		'IMG' => $extra['img'],
		'TITLE' => $extra['title'],
		'TEXT' => cot_parse($extra['text'], true, 'html')
	    ));
	    $t->parse("MAIN.ROW");
	}
	$i = 'new';
	$t->assign(array(
	    'IMG_INP' => cot_inputbox('text', 'ximg['.$i.']', ''),
	    'TITLE_INP' => cot_inputbox('text', 'xtitle['.$i.']', ''),
	    'TEXT_INP' => cot_textarea('xtext['.$i.']', '', 3, 60, ''),
	    'NUM' => $i,
	    'IMG' => '',
	    'TITLE' => '',
	    'TEXT' => ''
	));
	$t->parse("MAIN.ROW");
	
	$t->assign(array(
	    'ROW_COUNT' => $this->count,
	    'ROW_COUNT_INP' => cot_inputbox('text', 'xcount', $this->count),
	));
	$t->parse("MAIN");
	return $t->text('MAIN');
    }
    function update()
    {
	$ximg = cot_import('ximg', 'P', 'ARR');
	$xtitle = cot_import('xtitle', 'P', 'ARR');
	$xtext = cot_import('xtext', 'P', 'ARR');
	$xcount = cot_import('xcount', 'P', 'INT');
	$i = 0;
	$data = array();
	foreach ($xtitle as $key => $title)
	{
	    $i++;
	    if(!empty($xtitle[$key]) || !empty($ximg[$key]) || !empty($xtext[$key]))
	    {
		$row = array();
		$row['title'] = cot_import($xtitle[$key], 'D', 'TXT');
		$row['img'] = cot_import($ximg[$key], 'D', 'TXT');
		$row['text'] = cot_import($xtext[$key], 'D', 'HTM');
		$data[$i] = $row;
	    }
	}
	$this->count = $xcount;
	$this->data = $data;
    }
}
