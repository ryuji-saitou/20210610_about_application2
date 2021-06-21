class RenameImageIdColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :User, :image_id, :profile_image_id
  end
end
