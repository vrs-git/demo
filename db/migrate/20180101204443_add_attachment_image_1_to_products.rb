class AddAttachmentImage1ToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :image_1
    end
  end

  def self.down
    remove_attachment :products, :image_1
  end
end
