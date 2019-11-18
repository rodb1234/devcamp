class Portfolio < ApplicationRecord

  validates :title, :body, :main_image, :thumb_image, presence: true
  
  def self.angular_def
  	where(subtitle: 'angular')
  end

  scope :angular, -> { where(subtitle: 'angular') }

  #add_scope :angular do
  #  where(subtitle: 'angular')
  #end
end
