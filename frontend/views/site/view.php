<?php
use yii\helpers\Html;
?>
<h1>Games</h1>

    <div style="margin: 60px 0px">
    
        <div class="row">
            <div class="col-sm-12 col-md-8 ">
                <div class="thumbnail " style="border: 5px solid #ddd">
                    <img src="<?=$app->image?>" alt="<?= $app->name ?>" style="display:inline-block; margin: 20px">
                    <span style="display:inline-block; vertical-align: top; font-size: 150%; margin-top: 20px "><b><?= Html::encode("{$app->name}") ?></b></span>

                    <div class="caption">
                    <p class="text-right">
                        <button class="btn btn-primary toBuy" value="<?=$app->id_app?>" ><strong>$<?= $app->price ?> To Buy</strong></button>    
                        <button class="btn btn-default addToCart" value="<?=$app->id_app?>">Add to cart</button>    
                    </p>
                </div>                            

                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style='width: 75%; margin:auto; ' >
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox"  >
                    <div class="item active">
                        <img src="<?=$app->image1?>" alt="Game <?=$app->name?>" class="img-responsive" >
                    </div>
                    <div class="item">
                        <img src="<?=$app->image2?>" alt="Game <?=$app->name?>" class="img-responsive" >
                    </div>

                    <div class="item">
                        <img src="<?=$app->image3?>" alt="Game <?=$app->name?>" class="img-responsive" >
                    </div>
                    
                </div>
                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div><br>
                <div class="caption">
                    <p class="text-center"><?= $app->detail ?></p>
                </div>
            </div>
        </div>
    </div>
</div>
