<?php


namespace app\controllers;


use app\models\Main;
use vendor\core\base\View;

class UpdateController extends AppController
{
    public function deleteAction(){
        $posts = new Main();

        $id = $_GET["del"];
        $id=str_replace("'","",$id);

        $del = \R::hunt('posts', 'id = ?', [$id]);
        if ($del){
            $_SESSION['success'] = "Новость удалена";
            redirect(BLOG);
        }else{
            $_SESSION['error'] = "Нет такой новости!!!";
        }
    }

    public function editAction(){
        new Main();
        $id = $_GET["edit"];
        $id=str_replace("'","",$id);
        //debug($id);die();
        $edits = \R::load('posts',$id);

        $this->set(compact('edits'));


    }
    public function updateAction(){
        if (!empty($_POST)){
            new Main();
            $id = $_POST['id'];
            $title = $_POST['title'];
            $text = $_POST['text'];
            $created_at = $_POST['created_at'];
            $updated_at = $_POST['updated_at'];

            $posts=\R::load('posts',$id);
            $posts->title = $title;
            $posts->text = $text;
            $posts->created_at = $created_at;
            $posts->updated_at = $updated_at;
            //debug($posts);die();
            $update = \R::store($posts);
            if ($update){
                $_SESSION['success'] = "Новость обновлена";
                redirect(BLOG);
            }else{
                $_SESSION['error'] = "Ошибка, новость не обновлена!!!";
            }
            redirect();
        }
        View::setMeta('Страница редактирование новостей', 'Описание новостей', 'Ключевики новостей');
    }
}