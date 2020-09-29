<?php

use yii\db\Migration;

/**
 * Class m200929_121425_alter_table_comment_add_column_status
 */
class m200929_121425_alter_table_comment_add_column_status extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function up()
    {
        $this->addColumn('{{%comment}}', 'status', $this->integer()->notNull()->defaultValue(1));
    }

    /**
     * {@inheritdoc}
     */
    public function down()
    {
        $this->dropColumn('{{%comment}}', 'status');
    }

}
