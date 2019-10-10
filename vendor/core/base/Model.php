<?php


namespace vendor\core\base;


use vendor\core\Db;
use vendor\core\MyValidator;
use vendor\core\Validator;

abstract class Model
{
//    protected $pdo;
//    protected $table;
//    protected $pk = 'id';
    public $atributes = [];
    public $errors = [];
    public $rules = [];

    public function __construct()
    {
        $this->pdo = Db::instance();
    }

    public function load($data){
        foreach ($this->atributes as $name=>$value){
            if (isset($data[$name])){
                $this->atributes[$name] = $data[$name];
            }
        }
    }

    public function save($table){
        $tbl = \R::dispense($table);
        foreach ($this->atributes as $name => $value){
            $tbl->$name = $value;
        }
        return \R::store($tbl);
    }

    public function validate($data){
        MyValidator::lang('ru');
        $v = new MyValidator($data);
        $v->rules($this->rules);
        if ($v->validate()){
            return true;
        }
        $this->errors = $v->errors();
        return false;
    }

    public function getErrors(){
        $errors = '<ul>';
            foreach ($this->errors as $error){
                foreach ($error as $item) {
                    $errors .= "<li>$item</li>";
                }
            }
        $errors .= '</ul>';
        $_SESSION['error'] = $errors;
    }
}