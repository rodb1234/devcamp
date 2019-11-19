class Portfolio < ApplicationRecord

	#validations
  validates :title, :body, :main_image, :thumb_image, presence: true

  #scopes
  scope :angular, -> { where(subtitle: 'angular') }

  #callbacks
  after_initialize :set_defaults

  def set_defaults
  	self.main_image ||= "https://placehold.it/600x300"
  	self.thumb_image ||= "https://placehold.it/350x200"
  end
end
