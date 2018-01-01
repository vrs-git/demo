class AddAttachmentImage4ToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :image_4
    end
  end

  def self.down
    remove_attachment :products, :image_4
  end
end
