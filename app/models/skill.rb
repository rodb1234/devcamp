class Skill < ApplicationRecord
	include Placeholder
  validates :title, :percent_utilized, presence: true

  #callbacks
  after_initialize :set_defaults

  #defaults
  def set_defaults
  	self.badge ||= Placeholder.image_generator(250,250)
  end
end