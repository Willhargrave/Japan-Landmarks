class RemoveDependenciesFromLandmarks < ActiveRecord::Migration[7.0]
  def up
    remove_column :landmarks, :area_id
  end
end
