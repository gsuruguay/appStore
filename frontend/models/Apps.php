<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "apps".
 *
 * @property int $id_app
 * @property string $name
 * @property float $price
 * @property string $detail
 * @property string $image
 * @property int $id_category
 * @property string $creation_date
 * @property string $file
 */
class Apps extends \yii\db\ActiveRecord

{
    
    /**
     * {@inheritdoc}
     */

     /**
      * @var UploadedFile
      */
    public $fileImagen;

    public static function tableName()
    {
        return 'apps';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
        [['name', 'price', 'detail', 'id_category', ], 'required'],
            [['price'], 'number'],
            [['detail'], 'string'],
            [['id_category'], 'integer'],
            [['creation_date'], 'safe'],
        [['name', 'image',], 'string', 'max' => 250],
            [['fileImagen',], 'file','extensions' => 'png, jpg']

        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_app' => 'Id App',
            'name' => 'Name',
            'price' => 'Price',
            'detail' => 'Detail',
            'image' => 'Profile Picture',
            'fileImagen' => 'Profile Picture',
            'category.name' => 'Name Category',
            'creation_date' => 'Creation Date',
            'id_user' => 'Id User'
        ];
    }

    public function getCategory()
    {
        return $this->hasOne(Categorie::class, ['id_category' => 'id_category']);
    }
}
