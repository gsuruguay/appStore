<?php
use yii\helpers\Html;
use yii\widgets\LinkPager;
use yii\helpers\Url;
?>
<h1>Games</h1>

<div class="alert" role="alert">
    <div id="message">
    </div>
</div>

<div class="container-fluid"> 
    <div class="row text-center"  >
<?php foreach ($apps as $app): ?>
                    <div class="col-xs-6 col-md-3" style="margin: 20px 5px; border: 3px solid #ddd; height: 330px;">
                    <a href="<?=Url::to(['site/view', 'id' => $app->id_app])?>">
                        <img src="<?=$app->image?>" alt="<?= $app->name ?>" style="margin: 10px">
                            <h4 style="margin-top: 20px "><b><?= Html::encode("{$app->name}") ?></b>
                            </h4>
                    </a>                    
                        <p class="text-right">
                        <button class="btn btn-primary btn-sm toBuy" value="<?=$app->id_app?>" ><strong>$<?= $app->price ?> To Buy</strong></button>    
                        <button class="btn btn-default btn-sm addToCart" value="<?=$app->id_app?>">Add to cart</button>    
                        </p>
                    </div>                                        
<?php endforeach; ?>                    
    </div>     

<?= LinkPager::widget(['pagination' => $pagination]) ?>

<?php
$script = <<< JS
$(document).ready(function()
{
$(".toBuy").click(function() {
var idApp = $(this).val();
$.post("index.php?r=purchase/create", //Desde aqui hacemos la llamada ajax
    {
        id_app: idApp
    },
    function(response){
        var object = JSON.parse(response);
        if(object.status == "ok"){
            $(".alert").addClass("alert-success");
            document.getElementById("message").innerHTML = object.message;
        } else {
            $(".alert").addClass("alert-danger");
            document.getElementById("message").innerHTML = object.message;
        }

    });
});

$(".addToCart").click(function() {
var idApp = $(this).val();
$.post("index.php?r=purchase/add-cart",
    {
        id_app: idApp
    },
    function(response){
        var object = JSON.parse(response);
        console.log(object);
        if(object.status == "ok"){
            $(".alert").addClass("alert-success");
            document.getElementById("message").innerHTML = object.message;
            $(".cart").html(object.count);

        } else {
            $(".alert").addClass("alert-danger");
            document.getElementById("message").innerHTML = object.message;
        }



    });
});
    
});
JS;

$this->registerJs($script);
?>

