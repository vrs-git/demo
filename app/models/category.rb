class Category < ActiveRecord::Base

	has_many :products


	has_attached_file :cat_photo, styles: { medium: "400x400>", thumb: "200x200#" }


	validates_attachment_content_type :cat_photo, content_type: /\Aimage\/.*\z/
end
