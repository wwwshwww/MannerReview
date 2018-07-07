class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :manner_id
      t.integer :star
      t.text :text

      t.timestamps
    end
  end
end
