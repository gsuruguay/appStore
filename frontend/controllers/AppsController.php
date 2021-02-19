<?php

namespace frontend\controllers;

use app\models\FormUpload as ModelsFormUpload;
use common\models\User;
use Yii;
use frontend\models\Apps;
use frontend\models\AppsSearch;
use frontend\models\Categorie;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\data\Pagination;
use yii\db\Expression;
use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;
use frontend\models\FormUpload;
use yii\web\UploadedFile;

/**
 * AppsController implements the CRUD actions for Apps model.
 */
class AppsController extends Controller
{

    /**
     * {@inheritdoc}
     */
    
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['create', 'index', 'view', 'update', 'delete'],
                'rules' => [
                    [
                        'actions' => ['create', 'index', 'view', 'update', 'delete'],
                        'allow' => true,
                        'roles' => ['@'],
                        'matchCallback' => function ($rule, $action) {
                        return User::isUserDevelopers(Yii::$app->user->identity->id);
                        },
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * Lists all Apps models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new AppsSearch();
        $searchModel->id_user = Yii::$app->user->identity->id;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Apps model.
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
     * Creates a new Apps model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Apps();     
        $model->creation_date = new Expression("NOW()");
        $model->id_user = Yii::$app->user->identity->id;        
        $categorie = Categorie::find()->all();    
        $listData = ArrayHelper::map($categorie,'id_category','name');    
       
        if ($model->load(Yii::$app->request->post()))
        {
            $model->fileImagen= UploadedFile::getInstance($model, 'fileImagen');
            $model->image = 'img/'.$model->fileImagen->name;
            $model->save();
            $model->fileImagen->saveAs( 'img/'.$model->fileImagen->name);
        
        return $this->redirect(['view', 'id' => $model->id_app]);
        }
        return $this->render('create', [
            'model' => $model,
            'listData' => $listData,
        ]);
    }

    /**
     * Updates an existing Apps model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $categorie = Categorie::find()->all();    
        $listData = ArrayHelper::map($categorie,'id_category','name');

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id_app]);
        }
        return $this->render('update', [
            'model' => $model,
            'listData' => $listData,
        ]);
    }

    /**
     * Deletes an existing Apps model.
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
     * Finds the Apps model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Apps the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Apps::findOne($id)) !== null) {
            return $model;
        }
        throw new NotFoundHttpException('The requested page does not exist.');
    }
}

