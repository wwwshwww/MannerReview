class CreateManners < ActiveRecord::Migration[5.1]
  def change
    create_table :manners do |t|
      t.string :manner

      t.timestamps
    end
  end
end
