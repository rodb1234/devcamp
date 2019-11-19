class Portfolio < ApplicationRecord
	include Placeholder

	#validations
  validates :title, :body, :main_image, :thumb_image, presence: true

  #scopes
  scope :angular, -> { where(subtitle: 'angular') }

  #callbacks
  after_initialize :set_defaults

  #defaults
  def set_defaults
  	self.main_image ||= Placeholder.image_generator(600, 400)
  	self.thumb_image ||= Placeholder.image_generator(350, 200)
  end
end
