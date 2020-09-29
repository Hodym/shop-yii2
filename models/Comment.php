<?php

namespace app\models;

use Yii;
use yii\db\ActiveRecord;
use yii\behaviors\TimestampBehavior;
use yii\db\Expression;

/**
 * This is the model class for table "comment".
 *
 * @property int $id
 * @property int $product_id
 * @property string $username
 * @property string $email
 * @property string $created_at
 * @property string $updated_at
 * @property string $reviews
 */
class Comment extends ActiveRecord
{
    
    public function behaviors() {
        return [
            [
                'class' => TimestampBehavior::className(),
                'attributes' => [
                    ActiveRecord::EVENT_BEFORE_INSERT => ['created_at', 'updated_at'],
                    ActiveRecord::EVENT_BEFORE_UPDATE => ['updated_at'],
                ],
            // если вместо метки времени UNIX используется datetime:
              // 'value' => new Expression('NOW()'),
            ],
        ];
    }
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'comment';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['username', 'email', 'reviews'], 'required'],
            [['product_id'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
            [['reviews'], 'string'],
            [['username'], 'string','min' => 3, 'max' => 30],
            [['email'], 'string', 'max' => 255],
            ['email', 'email'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            //'id' => 'ID',
            //'product_id' => 'Product ID',
            'username' => '',
            'email' => '',
            //'created_at' => 'Created At',
            //'updated_at' => 'Updated At',
            'reviews' => '',
        ];
    }
    
}
