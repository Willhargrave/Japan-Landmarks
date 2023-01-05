class RemovePrefectureAddAddressToLandmarks < ActiveRecord::Migration[7.0]
  def change
    remove_column :landmarks, :prefecture

  end
end
