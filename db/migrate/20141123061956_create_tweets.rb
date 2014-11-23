class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :user_id
      t.string :content

      t.timestamps

      t.index :user_id
      t.index :created_at
    end
  end
end
