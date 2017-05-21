bootstrap
=========

плагин компилирует Bootstrap 3 css из исходников

Помогает создать правильный css для вашего сайта. Использует less.php https://github.com/oyejorge/less.php

Как пользоваться.
-----------------
* Установите плагин
* Создаете у себя в папке с темой 2 папки **less** и **css**
* В rc файл темы подключите функцию:

    `compile_botstrap_less($usr['theme'], 'имя less файла', 'итоговый файл');`


Имена файлов надо указывать без пути и расширения.

Для компиляции кастомного **bootstrap.css** в less файл достаточно поместить

	@import "bootstrap.less";

или же можено создать полную компиляцию фреймворка **bootstrap**

	// Core variables and mixins
	@import "variables.less";
	@import "mixins.less";

	// Reset and dependencies
	@import "normalize.less";
	@import "print.less";
	@import "glyphicons.less";

	// Core CSS
	@import "scaffolding.less";
	@import "type.less";
	@import "code.less";
	@import "grid.less";
	@import "tables.less";
	@import "forms.less";
	@import "buttons.less";

	// Components
	@import "component-animations.less";
	@import "dropdowns.less";
	@import "button-groups.less";
	@import "input-groups.less";
	@import "navs.less";
	@import "navbar.less";
	@import "breadcrumbs.less";
	@import "pagination.less";
	@import "pager.less";
	@import "labels.less";
	@import "badges.less";
	@import "jumbotron.less";
	@import "thumbnails.less";
	@import "alerts.less";
	@import "progress-bars.less";
	@import "media.less";
	@import "list-group.less";
	@import "panels.less";
	@import "responsive-embed.less";
	@import "wells.less";
	@import "close.less";

	// Components w/ JavaScript
	@import "modals.less";
	@import "tooltip.less";
	@import "popovers.less";
	@import "carousel.less";

	// Utility classes
	@import "utilities.less";
	@import "responsive-utilities.less";

Библиотека все импорты подключает в следующем порядке:
* сначала import файлов из директории темы
* при отсутствии файла импорт less бутстрапа.

**ЖДУ ВАШИХ КОММЕНТАРИЕВ**

