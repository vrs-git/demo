class AddAttachmentCatPhotoToCategories < ActiveRecord::Migration
  def self.up
    change_table :categories do |t|
      t.attachment :cat_photo
    end
  end

  def self.down
    remove_attachment :categories, :cat_photo
  end
end
