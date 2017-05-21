<?php

/**
 * Pagemultiavatar for Cotonti CMF
 *
 * @version 1.00
 * @author  esclkm, graber
 * @copyright (c) 2011 esclkm, graber
 */

defined('COT_CODE') or die('Wrong URL.');

$L['cfg_set'] = array('Формат установок','модуль | категория | путь | путь для миниатюры | обязательная загрузка | расширение (через запятую) | макс размер');
$L['cfg_filecheck'] = array('Проверять содержимое файлов');


$L['lstr_title'] = "Редактор слайдов";
/*
$L['lstr_help'] = 'В качестве callback-функции может быть использована любая объявленная функция. Если функция не указана, или ее имя неверно - будет выведен текст из графы параметры функции.<br/>
    Все параметры callback-функций указываются в виде объекта json, например: <br/>
{<br/>
  &nbsp;&nbsp;&nbsp;&nbsp;param1: "Вася",<br/>
  &nbsp;&nbsp;&nbsp;&nbsp;param2: 35,<br/>
  &nbsp;&nbsp;&nbsp;&nbsp;"isAdmin": false<br/>
}<br/>
Для большинства функций имена ключей не учитываются! идет просто сортировка ключей в алфавитном порядке. Поэтому в приведенном выше примере - первым будет аргумент "isAdmin". Функции исключения (в которых важны ключи):<br/>
1. pagefullbyid - вывод текста страницы с определенным шаблоном:<br/>
{<br/>
&nbsp;&nbsp;&nbsp;&nbsp;"id" : "уникальный номер или алиас страницы", <br/>
&nbsp;&nbsp;&nbsp;&nbsp;"tpl"  = "файл шаблона"<br/>
}<br/>
2. pagetextbyid - вывод текста страницы<br/>
{<br/>
&nbsp;&nbsp;&nbsp;&nbsp;"id" : "уникальный номер или алиас страницы", <br/>
&nbsp;&nbsp;&nbsp;&nbsp;"field"  = "поле таблицы для вывода"<br/>
}<br/>
3. contact_bottom - вывод формы контактов<br/>
{ <br/>
&nbsp;&nbsp;&nbsp;&nbsp;"tpl"  = "файл шаблона"<br/>
}<br/>
4. pp_list - вывод списка страниц<br/>
{<br/>
&nbsp;&nbsp;&nbsp;&nbsp;"code " : "шаблон -  pageplus.$code.tpl", <br/>
&nbsp;&nbsp;&nbsp;&nbsp;"items"  = "количество элементов на страницу. 0 - без ограничений",<br/>
&nbsp;&nbsp;&nbsp;&nbsp;"order"  = "сортировка - MySQL",<br/>
&nbsp;&nbsp;&nbsp;&nbsp;"condition"  = "фильтр - MySQL",<br/>
&nbsp;&nbsp;&nbsp;&nbsp;"cat"  = "код категории",<br/>
&nbsp;&nbsp;&nbsp;&nbsp;"sub"  = "учитывать подкатегории",<br/>
}
';
 * 
 * 
 */

$L['lstr_help'] = 'В качестве callback-функции может быть использована любая объявленная функция. Если функция не указана, или ее имя неверно - будет выведен текст из графы параметры функции.<br/>
    Все параметры callback-функций указываются в виде объекта json, например: <br/>
{<br/>
  &nbsp;&nbsp;&nbsp;&nbsp;param_name: "Вася",<br/>
  &nbsp;&nbsp;&nbsp;&nbsp;param2_name: 35,<br/>
  &nbsp;&nbsp;&nbsp;&nbsp;"isAdmin": false<br/>
}<br/>
В качестве ключа указывается имя параметра, если параметр не указан, то будет использован параметр по умолчанию.<br/> Примеры часто используемых функций:<br/>
1. pagefullbyid - вывод текста страницы с определенным шаблоном:<br/>
{<br/>
&nbsp;&nbsp;&nbsp;&nbsp;"id" : "уникальный номер или алиас страницы", <br/>
&nbsp;&nbsp;&nbsp;&nbsp;"tpl"  = "файл шаблона"<br/>
}<br/>
2. pagetextbyid - вывод текста страницы<br/>
{<br/>
&nbsp;&nbsp;&nbsp;&nbsp;"id" : "уникальный номер или алиас страницы", <br/>
&nbsp;&nbsp;&nbsp;&nbsp;"field"  = "поле таблицы для вывода"<br/>
}<br/>
3. contact_bottom - вывод формы контактов<br/>
{ <br/>
&nbsp;&nbsp;&nbsp;&nbsp;"tpl"  = "файл шаблона"<br/>
}<br/>
4. pp_list - вывод списка страниц<br/>
{<br/>
&nbsp;&nbsp;&nbsp;&nbsp;"code " : "шаблон -  pageplus.$code.tpl", <br/>
&nbsp;&nbsp;&nbsp;&nbsp;"items"  = "количество элементов на страницу. 0 - без ограничений",<br/>
&nbsp;&nbsp;&nbsp;&nbsp;"order"  = "сортировка - MySQL",<br/>
&nbsp;&nbsp;&nbsp;&nbsp;"condition"  = "фильтр - MySQL",<br/>
&nbsp;&nbsp;&nbsp;&nbsp;"cat"  = "код категории",<br/>
&nbsp;&nbsp;&nbsp;&nbsp;"sub"  = "учитывать подкатегории",<br/>
}
';

$L['lstr_deleted'] = "Запись удалена";
$L['lstr_added'] = "Запись добавлена";
$L['lstr_updated'] = "Обновлено";

$L['MenuTitle'] = 'Заголовок меню';
$L['MenuHref'] = 'Ссылка меню';

$L['ClassesMain'] = 'Классы основные';
$L['ClassesAdd'] = 'Классы оверлея';

$L['FunctionName'] = 'Имя функции';
$L['FunctionParam'] = 'Параметры';