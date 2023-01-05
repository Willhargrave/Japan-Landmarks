class AddAddressToLandmarks < ActiveRecord::Migration[7.0]
  def change
    add_column :landmarks, :address, :text
  end
end
