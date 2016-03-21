class RemoveTimestampsFromPhotoShouts < ActiveRecord::Migration
  def change
    remove_columns :photo_shouts, :created_at
    remove_columns :photo_shouts, :updated_at
  end
end
