class Product < ActiveRecord::Base
  belongs_to :owner
  belongs_to :category

  has_many :reviews


  scope :inactive , -> { where(active: false) }
  scope :out_of_stock , -> { where(instock: false) }

  has_attached_file :image_1, styles: { medium: "200x150#", thumb: "100x100#" }
  has_attached_file :image_2, styles: { medium: "200x150#", thumb: "100x100#" }
  has_attached_file :image_3, styles: { medium: "200x150#", thumb: "100x100#" }
  has_attached_file :image_4, styles: { medium: "200x150#" ,thumb: "100x100#" }
  has_attached_file :image_5, styles: { medium: "200x150#", thumb: "100x100#" }


	validates_attachment_content_type :image_1, content_type: /\Aimage\/.*\z/
	validates_attachment_content_type :image_2, content_type: /\Aimage\/.*\z/
	validates_attachment_content_type :image_3, content_type: /\Aimage\/.*\z/
	validates_attachment_content_type :image_4, content_type: /\Aimage\/.*\z/
	validates_attachment_content_type :image_5, content_type: /\Aimage\/.*\z/


  def name
    return self.product_name
  end
end
