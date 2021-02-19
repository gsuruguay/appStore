<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\LinkPager;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\PurchaseSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'My Cart';
$this->params['breadcrumbs'][] = $this->title;

?>
<div class="purchase-index">

    <h1><?= Html::encode($this->title) ?></h1>

<?php
if ($model == NULL) {?>
    <div class="alert alert-danger" role="alert">
        <strong>Oops!</strong> You still do not have Apps added to your cart.
    </div>
<?php 
} else {
?>
    <div class="container-fluid"> 
    <div class="row text-center ">

    <?php foreach ($model as $appCart): ?>
        <div class="col-xs-6 col-md-3 " style="margin: 20px 5px; border: 3px solid #ddd; height: 330px;">
        <a href="<?=Url::to(['site/view', 'id' => $appCart->id_app])?>">

        
        <div style="margin: 10px 0px">
        <?php echo Html::a('X', ['deleteitem', 'id' => $appCart->id_app], [
                'class' => 'btn btn-danger btn-sm',
                'style' => 'float: right',
                    'data' => [
                    'confirm' => 'Are you sure you want deleted this cart?',
                    'method' => 'post',                           
                ],
           ])?> 
        </div>


                <img src="<?=$appCart->image?>" alt="<?= $appCart->name ?>" style="margin: 20px">
                <h4 style="margin-top: 20px "><b><?= Html::encode("{$appCart->name}") ?></b></h4>
            </a>                    
        </div>                                        
<?php endforeach; ?>                    
    </div> 
        <?= Html::a('To Buy', ['to-buy'], [
                'class' => 'btn btn-primary',
                'title' => 'Eliminar',
                'data' => [
                    'confirm' => 'Are you sure you want to buy this app?',
                    'method' => 'post',
                ],
            ]) ?>

            
 
        <?= Html::a('Delete All Cart', ['borrar'], [
                'class' => 'btn btn-danger',
                'data' => [
                    'confirm' => 'Are you sure you want deleted this cart?',
                    'method' => 'post',
                ],
            ]) ?>

            
    </div>
<?php } ?>
</div>

