<?php

namespace app\controllers;

use Yii;
use app\models\Product;
use app\models\Comment;
use app\models\CommentForm;
use yii\data\Pagination;

class ProductController extends AppController
{
    public function actionView($id) 
    {
        //$id = Yii::$app->request->get('id');

        $product = Product::findOne($id);
        
        $commentForm = new CommentForm();
        
        $comment = new Comment();
        if ($commentForm->load(Yii::$app->request->post())) {
            $comment->product_id = $id;
            $comment->username = $commentForm->username;
            $comment->email = $commentForm->email;
            $comment->reviews = $commentForm->reviews;
            
            if ($comment->save()) {
                Yii::$app->session->setFlash('success', "{$comment->username} ваш коментарий добавлен");
                return $this->refresh();
            }
        }
        
        if (empty($product)) {
            throw new \yii\web\HttpException(404, 'The requested Item could not be found.');
        }
        
        //$product = Product::find()->with('category')->where(['id' => $id])->limit(1)->one();
        $hits = Product::find()->where(['hit' => '1'])->limit(6)->all();
        
        $query = Comment::find()->where(['product_id' => $id])->orderBy(['id' => SORT_DESC]);      
        //$comments = $product->comments;
        $countQuery = clone $query;
        $pages = new Pagination(['totalCount' => $countQuery->count(), 'pageSize' => 3, 'forcePageParam' => false, 'pageSizeParam' => false]);
        $comments = $query->offset($pages->offset)->limit($pages->limit)->all();
        
        if (!Yii::$app->user->isGuest) {
            $userData = [];
            $userData['name'] = Yii::$app->user->identity->username;
            $userData['email'] = Yii::$app->user->identity->email;
        } else {
            $userData['name'] = '';
            $userData['email'] = '';
        }
        
        $this->setMeta('E-SHOPPER | ' . $product->name, $product->keywords, $product->description);
        return $this->render('view', [
            'product' => $product, 
            'hits' => $hits, 
            'comments' => $comments, 
            'commentForm' => $commentForm,
            'pages' => $pages,
            'userData' => $userData,
            ]);
    }
}
