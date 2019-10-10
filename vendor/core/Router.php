<?php

namespace vendor\core;

class Router
{
    /**
     * таблица маршрутов
     * @var array
     */
    protected static $routes = [];

    /**
     * текущий маршрут
     * @var array
     */
    protected static $route = [];


    /**
     * добавляет маршрут в таблицу маршрутов
     *
     * @param $regexp регулярное выражение маршрута
     * @param array $route маршрут ([controller, action, params])
     */
    public static function add($regexp, $route = [])
    {
        self::$routes[$regexp] = $route;
    }


    /**
     * возращает таблицу маршрутов
     *
     * @return array
     */
    public static function getRoutes()
    {
        return self::$routes;
    }


    /**
     * @return array
     */
    public static function getRoute()
    {
        return self::$route;
    }

    /**
     * ищет URL в таблице маршрутов
     *
     * @param string $url
     * @return bool
     */
    public static function matchRoute($url)
    {
        foreach (self::$routes as $pattern => $route) {
            if (preg_match("#$pattern#i", $url, $matches)) {
                foreach ($matches as $k => $v) {
                    if (is_string($k)) {
                        $route[$k] = $v;
                    }
                }
                if (!isset($route['action'])) {
                    $route['action'] = 'index';
                }

                $route['controller'] = self::upperCamelCase($route['controller']);
                self::$route = $route;

                return true;
            }
        }
        return false;
    }

    /**
     * перенаправляет URL по корректному маршруту
     *
     * @param $url входящий URL
     * @return void
     */
    public static function dispatch($url)
    {
        $url = self::removeString($url);
        if (self::matchRoute($url)) {
            $controller = 'app\controllers\\'.self::$route['controller'].'Controller';
            if (class_exists($controller)) {
                $cObj = new $controller(self::$route);
                $action = self::lowerCamelCase(self::$route['action']).'Action';
                if (method_exists($cObj, $action)){
                    $cObj->$action();
                    $cObj->getView();
                }else{
                    throw new \Exception("Метод <b>$controller::$action</b> не найден");
                }
            } else {
                throw new \Exception("Контроллер <b>$controller</b> не найден");
            }
        } else {
            throw new \Exception('Страница не найдена',404);
        }
    }

    protected static function upperCamelCase($name){
        return str_replace(' ','',ucwords(str_replace('-',' ',$name)));
    }

    protected static function lowerCamelCase($name){
        return lcfirst(self::upperCamelCase($name));
    }

    protected static function removeString($url){
        if ($url){
            $params = explode('&', $url,2);
            if (false === strpos($params[0], '=')){
                return trim($params[0],'/');
            }else{
                return '';
            }
        }
    }
}