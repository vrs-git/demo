class AddAttachmentImage2ToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :image_2
    end
  end

  def self.down
    remove_attachment :products, :image_2
  end
end
