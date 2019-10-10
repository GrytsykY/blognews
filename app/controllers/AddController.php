<?php


namespace app\controllers;



use app\models\Main;
use vendor\core\base\View;
use vendor\core\Validator;

class AddController extends AppController
{
    public function addAction(){
        if (!empty($_POST)){
            $posts = new Main();
            $data = $_POST;
            $posts->load($data);
            if (!$posts->validate($data)){
                $_SESSION['title'] = $data['title'];
                $_SESSION['text'] = $data['text'];
                $posts->getErrors();
                redirect();
            }
            if ($posts->save('posts')){
                $_SESSION['success'] = "Новость добавлена";
                redirect(BLOG);
            }else{
                $_SESSION['error'] = "Новость не добавлена!!!";
            }
            redirect();
        }
        View::setMeta('Страница добавления новостей', 'Описание новостей', 'Ключевики новостей');

    }
    public function add(){
        //$data = $_POST['id'];
    }
}