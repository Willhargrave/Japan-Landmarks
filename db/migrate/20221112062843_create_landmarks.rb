class CreateLandmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :landmarks do |t|
      t.string :name
      t.text :comment
      t.string :prefecture
      t.references :area, null: false, foreign_key: true
      t.timestamps
    end
  end
end
