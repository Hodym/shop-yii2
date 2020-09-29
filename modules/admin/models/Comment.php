<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "comment".
 *
 * @property int $id
 * @property int $product_id
 * @property string $username
 * @property string $email
 * @property int $created_at
 * @property int $updated_at
 * @property string $reviews
 * @property int $status
 */
class Comment extends \yii\db\ActiveRecord
{
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
            [['product_id', 'username', 'email', 'created_at', 'updated_at', 'reviews'], 'required'],
            [['product_id', 'created_at', 'updated_at', 'status'], 'integer'],
            [['reviews'], 'string'],
            [['username'], 'string', 'max' => 30],
            [['email'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'product_id' => 'Product ID',
            'username' => 'Username',
            'email' => 'Email',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'reviews' => 'Reviews',
            'status' => 'Status',
        ];
    }
    
    public function approve()
    {   
        $this->status = 0;
        return $this->save(false, ['status']);
    }
    
}
