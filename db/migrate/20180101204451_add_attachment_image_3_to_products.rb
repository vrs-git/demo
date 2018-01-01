class AddAttachmentImage3ToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :image_3
    end
  end

  def self.down
    remove_attachment :products, :image_3
  end
end
