<?php


namespace app\models;


use vendor\core\base\Model;


class Main extends Model
{
    //protected $date = date('Y-m-d');
    public $table = 'posts';
    public $atributes = [
        'title' => '',
        'text' => '',
        'created_at' => '',
        'updated_at' => '',
    ];

    public $rules = [
        'required' => [
            ['title'],
            ['text'],
        ]
    ];
}