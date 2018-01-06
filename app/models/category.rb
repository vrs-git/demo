class Category < ActiveRecord::Base

	has_many :products

	scope :out_of_order , -> { where(cat_status: false) }

	has_attached_file :cat_photo, styles: { medium: "400x400>", thumb: "200x200#" }


	validates_attachment :cat_photo, content_type: { content_type: ["image/jpg", "image/jpeg",     "image/png"] }
end
