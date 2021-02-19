<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\Apps */
/* @var $form yii\widgets\ActiveForm */
?>


<div class="apps-form">

    <?php $form = ActiveForm::begin(["options" => ["enctype" => "multipart/form-data"],
     ]); ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'price')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'detail')->textarea(['rows' => 6]) ?>


    <?= $form->field($model, 'id_category')->dropDownList(
        $listData,
        ['prompt'=>'Select for category']
        ); ?>

<?php echo $form->field($model, "fileImagen")->fileInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
