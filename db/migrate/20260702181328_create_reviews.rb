class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :pokemon, null: false, foreign_key: true
      t.string :username
      t.integer :rating
      t.text :comment

      t.timestamps
    end
  end
end
