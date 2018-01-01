class AddAttachmentImage5ToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :image_5
    end
  end

  def self.down
    remove_attachment :products, :image_5
  end
end
