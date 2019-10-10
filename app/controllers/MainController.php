<?php

namespace app\controllers;


use app\models\Main;
use vendor\core\App;
use vendor\core\base\View;
use vendor\libs\About;
use vendor\libs\Navigation;


class MainController extends AppController
{
    public function indexAction()
    {
        new Main();


        $lang = App::$app->getProperty('lang')['code'];
        $total = \R::count('posts');

        $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
        $perpage = 10;

        $pagination = new Navigation($page, $perpage, $total);
        $start = $pagination->getStart();
        $posts = \R::find('posts', "ORDER BY id DESC LIMIT $start, $perpage", [$lang]);//, "LIMIT $start, $perpage"
        //$posts = \R::findAll('posts','ORDER BY id DESC ');
        View::setMeta('Главная', 'Описание страницы', 'Ключевые слова');

        $this->set(compact('posts','pagination','total'));
    }
}