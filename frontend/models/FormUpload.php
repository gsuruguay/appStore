<?php

namespace app\models;
use yii\base\model;

class FormUpload extends model{

    public $file;

    public function rules()
    {
        return [
            ['file', 'file', 
            'skipOnEmpty' => false,
            'uploadRequired' => 'No has seleccionado ningún archivo',
            'maxSize' => 1024*1024*1, 
            'tooBig' => 'El tamaño máximo permitido es 1MB', 
            'minSize' => 8, 
            'tooSmall' => 'El tamaño mínimo permitido son 10 BYTES', 
            'extensions' => 'pdf, txt, doc',
            'wrongExtension' => 'El archivo {file} no contiene una extensión permitida {extensions}', 
            'maxFiles' => 4,
            'tooMany' => 'El máximo de archivos permitidos son {limit}', 
            ],
        ]; 
    } 

public function attributeLabels()
{
    return [
            'file' => 'Seleccionar archivos:',
            ];
}
}