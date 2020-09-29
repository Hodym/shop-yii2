<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Comments';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="comment-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            //['class' => 'yii\grid\SerialColumn'],

            [
                'attribute' => 'id',
                'format' => 'raw',
                'value' => function ($comment) {
                    return Html::a($comment->id, ['view', 'id' => $comment->id]);
                },
            ],
            //'product_id',
            //'username',
            //'email:email',
            //'created_at',
            [
                'attribute' => 'created_at',
                'value' => function($data){
                    return date('d M Y', $data->created_at);
                },
            ],

            'reviews:ntext',

            [
                'attribute' => 'status',
                'value' => function($data){
                    return $data->status ? '<span class="text-danger">Новий</span>' : '<span class="text-success">Одобрен</span>';
                },
                'format' => 'html',
            ],

            [
                'class' => 'yii\grid\ActionColumn',
                'template' => '{approve}&nbsp;&nbsp;&nbsp;{delete}',
                'buttons' => [
                    'approve' => function ($url, $comment) {
                        return Html::a('<span class="glyphicon glyphicon-ok"></span>', ['approve', 'id' => $comment->id]);
                    },
                ],

            ],
        ],
    ]); ?>


</div>
