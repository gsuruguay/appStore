<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\Categorie */

$this->title = 'Update Categorie: ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Categories', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id_category]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="categorie-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
