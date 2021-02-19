<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\Apps */
/* @var $form yii\widgets\ActiveForm */
?>


<div class="apps-form">

<table id="w0" class="table table-striped table-bordered detail-view">
    <tbody>
        <tr>
            <th>Name</th>
            <td><?= Html::encode($model->name) ?></td>
        </tr>
            <tr><th>Category</th>
            <td><?= Html::encode($model->id_category) ?></td>
        </tr>
    </tbody>
</table>

    <?php $form = ActiveForm::begin(["options" => ["enctype" => "multipart/form-data"],
     ]); ?>


    <?= $form->field($model, 'price')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'detail')->textarea(['rows' => 6]) ?>



<?php echo $form->field($model, "fileImagen")->fileInput() ?>



    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
