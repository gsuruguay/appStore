<?php

namespace frontend\controllers;

use common\models\User;
use frontend\models\Apps;
use frontend\models\AppsSearch;
use Yii;
use frontend\models\Purchase;
use frontend\models\PurchaseSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\db\Expression;
use yii\filters\AccessControl;
use yii\helpers\VarDumper;

/**
 * PurchaseController implements the CRUD actions for Purchase model.
 */
class PurchaseController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [

            'access' => [
                'class' => AccessControl::className(),
                'only' => ['create', 'index', 'view', 'update', 'delete','to-buy'],
                'rules' => [
                    [
                        'actions' => ['create','index', 'view', 'delete','to-buy'],
                        'allow' => true,
                        'roles' => ['@'],
                        'matchCallback' => function ($rule, $action) {
                        return User::isUserClient(Yii::$app->user->identity->id);
                        },
                    ],
                ],
            ],

            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Purchase models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new PurchaseSearch();
        $searchModel->id_user = Yii::$app->user->identity->id;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionMyCart()
    {

        $model = Purchase::getMyCart();
        return $this->render('myCart', [
            'model' => $model,
        ]);
    }

    /**
     * Displays a single Purchase model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Purchase model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {

        if (Yii::$app->request->post()) {
            if (isset($_POST["id_app"])){
                $idApp = $_POST["id_app"];
                $model = new Purchase();
                $model->id_app = $idApp;
                $model->id_user = Yii::$app->user->identity->id;
                $model->date = new Expression("NOW()");
                if($model->save()){
                    $response =[
                        'status'=>'ok',
                        'message'=>'Successful purchase'
                    ];               
                }else{
                    $response =[
                        'status'=>'Failed',
                        'message'=>'An error occurred, the purchase could not be made'
                    ];
                }                
                echo json_encode($response);     
                
            }
        }
    }

    public function actionAddCart()
    {
        if (Yii::$app->request->post()) {
            if (isset($_POST["id_app"])){
                $idApp = $_POST["id_app"];
                
                $session = Yii::$app->session;
                $_SESSION['myCart'][] = $idApp;

                if( isset($_SESSION['myCart']) ){
                    $response =[
                        'status'=>'ok',
                        'message'=>'<strong>Product added to cart!</strong>',
                        'myCart' => $_SESSION['myCart'],
                        'count' => Purchase::getCountMyCart(),
                    ];               
                }else{
                    $response =[
                        'status'=>'Failed',
                        'message'=>'<strong>An error occurred</strong>'
                    ];
                }
                
                echo json_encode($response);
                    
                
            }
        }
        return $this->goBack($defaultUrl = null );
    }
    

    public function actionBorrar()
    
    {
        foreach ($_SESSION['myCart'] as $idApp){
            unset($_SESSION['myCart']);

        }

        return $this->goBack();
    }
    
    public function actionDeleteitem($id)
    
    { 
        $idBuscar = $id;
        $carrito = $_SESSION['myCart'];
        foreach($carrito as $i => $value){
            if($value == $idBuscar ){
                $pos = $i;
            }
        }
        unset($carrito[$pos]);
        $_SESSION['myCart'] = $carrito;
        
        $model = Purchase::getMyCart();
        return $this->render('myCart', [
            'model' => $model,
        ]);
    }

    public function actionToBuy()
    {
        foreach ($_SESSION['myCart'] as $idApp){
            $model = new Purchase();
            $model->id_app = $idApp;
            $model->id_user = Yii::$app->user->identity->id;
            $model->date = new Expression("NOW()");
            $model->save(false);
        }
        unset($_SESSION['myCart']);

        return $this->render('compraExitosa', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Purchase model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id_purchase]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Purchase model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Purchase model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Purchase the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Purchase::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
