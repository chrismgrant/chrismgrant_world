class Article < ActiveRecord::Base
	attr_accessible :title, :content, :category_id, :active

	belongs_to :category

	scope :alphabetical, order('title DESC')
	scope :active, where('active = ?', true)

	validates_presence_of :title
	validates_presence_of :content
end