<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\Survey */

$this->title = 'Update Survey: ' . $model->id_survey;
$this->params['breadcrumbs'][] = ['label' => 'Surveys', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_survey, 'url' => ['view', 'id' => $model->id_survey]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="survey-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
