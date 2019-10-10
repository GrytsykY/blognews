<?php


namespace vendor\core;

use libs\MyPagination;
use vendor\core\ErrorHandler;
use vendor\core\Registry;

class App
{
    public static $app;

    /**
     * App constructor.
     */
    public function __construct()
    {
        session_start();
        self::$app = Registry::instance();
        //new ErrorHandler();

    }
}