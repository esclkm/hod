<?php
/* ====================
[BEGIN_COT_THEME]
Name=Bootstrap 3 Theme
Schemes=default:Default
[END_COT_THEME]
==================== */

/**
 * Cotonti Model Theme
 *
 * @package Cotonti
 * @version 1.00
 * @author esclkm
 * @copyright 
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL');

if (!function_exists('minusone'))
{
	function minusone($num)
	{
		return (int)$num - 1;
	}
	
	function areacolor()
	{
		if($_GET['e'] == 'page')
		{
			$array = cot_structure_parents('page', $_GET['c']);
			if(in_array('folio',$array))
			{
				return ('foliocolors');
			}
			if(in_array('cotonti',$array))
			{
				return ('cotonticolors');
			}
		}
		return '';
	}

	function filter_wmark($newimage)
	{
		global $cfg, $usr;
		$stamp = imagecreatefrompng($cfg['themes_dir'].'/'.$usr['theme'].'/images/logo.png');
		// Set the margins for the stamp and get the height/width of the stamp image
		$marge_right = 10;
		$marge_bottom = 10;
		$sx = imagesx($stamp);
		$sy = imagesy($stamp);
		$nx = imagesx($newimage);
		$ny = imagesy($newimage);



		// Copy the stamp image onto our photo using the margin offsets and the photo 
		// width to calculate positioning of the stamp. 
		imagecopy($newimage, $stamp, $nx-$sx-10, $ny-$sy-10, 0, 0, $sx, $sy);

	}
	
	function selectbox_out($value, $field)
	{
		
		global $db_pages, $cot_extrafields;
		$value = trim(str_replace(array(' , ', ', ', ' ,'), ',', $value));
		$value = explode(',', $value);
		
		$all_values = $cot_extrafields[$db_pages][$field]['field_variants'];
		$all_values = trim(str_replace(array(' , ', ', ', ' ,'), ',', $all_values));
		$all_values = explode(',', $all_values);
		
		$ret = "";
	//	cot_print($value, $field, $all_values, $cot_extrafields[$db_pages]);
		foreach($all_values as $v)
		{
			$enabled = in_array($v, $value) ? 'enabled' : '';
			$sub = in_array($v, $value) ? '<i class="fa fa-check-circle-o"></i> ' : '<i class="fa fa-circle-o"></i> ';
			$ret .= '<li class="sextypes '.$enabled.'">'.$sub.$v.'</li>'; 
		}
		return '<ul class="sexselector list-unstyled">'.$ret.'</ul>';
	}
	
	function page_color_header($text)
	{	
		$text = preg_replace('/(\*(.+)\*)/i', '<span class="text-primary">$2</span>', $text);
		$text = preg_replace('/(\+(.+)\+)/i', '<span class="text-warning">$2</span>', $text);
		return $text;
	}
	function minus_one($int)
	{
		return $int - 1;
	}
	
	/**
	* get youtube video ID from URL
	*
	* @param string $url
	* @return string Youtube video id or FALSE if none found. 
	*/
   function youtube_id_from_url($url) {
	   $pattern = 
		   '%^# Match any youtube URL
		   (?:https?://)?  # Optional scheme. Either http or https
		   (?:www\.)?      # Optional www subdomain
		   (?:             # Group host alternatives
			 youtu\.be/    # Either youtu.be,
		   | youtube\.com  # or youtube.com
			 (?:           # Group path alternatives
			   /embed/     # Either /embed/
			 | /v/         # or /v/
			 | /watch\?v=  # or /watch\?v=
			 )             # End path alternatives.
		   )               # End host alternatives.
		   ([\w-]{10,12})  # Allow 10-12 for 11 char youtube id.
		   $%x'
		   ;
	   $result = preg_match($pattern, $url, $matches);
	   if ($result) {
		   return $matches[1];
	   }
	   return false;
   }
   function vimeo_id_from_url($url) {
		if(preg_match("/(https?:\/\/)?(www\.)?(player\.)?vimeo\.com\/([a-z]*\/)*([0-9]{6,11})[?]?.*/", $url, $output_array)) {
			return $output_array[5];
		}
		return false;

   }
   function string_split($string)
   {
	   return preg_split("/\r\n|\n|\r/", $string);
   }
}