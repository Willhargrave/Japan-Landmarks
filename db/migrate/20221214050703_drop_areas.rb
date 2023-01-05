class DropAreas < ActiveRecord::Migration[7.0]
  def change
    drop_table :areas, force: :cascade
  end
end
