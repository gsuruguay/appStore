<?php

namespace frontend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\Apps;

/**
 * AppsSearch represents the model behind the search form of `frontend\models\Apps`.
 */
class AppsSearch extends Apps
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_app', 'id_category', 'id_user'], 'integer'],
            [['name', 'detail', 'image', 'creation_date'], 'safe'],
            [['price'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Apps::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id_app' => $this->id_app,
            'price' => $this->price,
            'id_category' => $this->id_category,
            'creation_date' => $this->creation_date,
            'id_user' => $this->id_user, 
        ]);

        $query->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'detail', $this->detail])
            ->andFilterWhere(['like', 'image', $this->image]);

        return $dataProvider;
    }
}
