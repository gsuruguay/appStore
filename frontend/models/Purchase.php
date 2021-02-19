<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "purchases".
 *
 * @property int $id_purchase
 * @property int $id_app
 * @property int $id_user
 * @property string $date
 */
class Purchase extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'purchases';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_app', 'id_user', 'date'], 'required'],
            [['id_app', 'id_user'], 'integer'],
            [['date'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_purchase' => 'Id Purchase',
            'id_app' => 'Id App',
            'id_user' => 'Id User',
            'date' => 'Date',
        ];
    }

    public function getApp()
    {
        return $this->hasOne(Apps::class, ['id_app' => 'id_app']);
    }

    static public function getMyCart()
    {   
        $model = NULL;
        if (isset($_SESSION['myCart'])) {
            $appsInCart = $_SESSION['myCart'];
            $model = Apps::find()->where( ['IN', 'id_app', $appsInCart] )->all();
        }
        return $model;
    }
    
    static public function getCountMyCart()
    {
        $count = 0;
        if (isset($_SESSION['myCart'])) {
            $appsInCart = $_SESSION['myCart'];
            $count = Apps::find()->where( ['IN', 'id_app', $appsInCart] )->count();
        }
        return $count;
    }    
}
