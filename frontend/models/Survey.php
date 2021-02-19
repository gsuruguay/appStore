<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "survey".
 *
 * @property int $id_survey
 * @property int $score
 * @property int $vote
 * @property int $id_app
 * @property int $id_user
 */
class Survey extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'survey';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['score', 'vote', 'id_app', 'id_user'], 'required'],
            [['score', 'vote', 'id_app', 'id_user'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_survey' => 'Id Survey',
            'score' => 'Score',
            'vote' => 'Vote',
            'id_app' => 'Id App',
            'id_user' => 'Id User',
        ];
    }
}
