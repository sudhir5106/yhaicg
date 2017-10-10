<?php
session_start();
date_default_timezone_set('Asia/Calcutta');
define('SERVER','localhost');
define('DBUSER','root');
define('DBPASSWORD','');
define('DBNAME','yhaicg');
define('ROOT',$_SERVER['DOCUMENT_ROOT'].'/yhaicg'); //FOR PHP ROOT LINK


define('PATH_LIBRARIES', ROOT.'/libraries');
define('PATH_JS_LIBRARIES','/yhaicg/js');
define('PATH_CSS_LIBRARIES','/yhaicg/css');
define('PATH_IMAGE','/yhaicg/images');
define('PATH_IMAGE_UPLOAD','/yhaicg/images');
define('PATH_VIDEO_UPLOAD','/yhaicg/video');
define("PATH_GALLERY_IMAGE",'/yhaicg/images/galleryimage/');


define('PATH_LINK', '/yhaicg'); // for html link only
define('PATH_INCLUDE',ROOT.'/include');
//Admin path setup

define("PATH_ADMIN", '/yhaicg/yhaiadmin');// for html link
define("ADMIN_INCLUDE", ROOT.'/yhaiadmin/include');
define('PATH_ADMIN_JS_LIBRARIES','/yhaicg/yhaiadmin/js');
define('PATH_ADMIN_CSS_LIBRARIES','/yhaicg/yhaiadmin/css');

define('MASTERS_LINK_CONTROL','/yhaicg/yhaiadmin/masters');

define("ROWS_PER_PAGE",10);
define("PAGELINK_PER_PAGE",10);
?>