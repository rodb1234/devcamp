class Portfolio < ApplicationRecord
  has_many :technologies, dependent: :destroy
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  before_destroy :no_referenced_orders
  include Placeholder

  # validations
  validates :title, :body, :main_image, :thumb_image, presence: true

  # scopes
  scope :angular, -> { where(subtitle: 'angular') }

  # callbacks
  after_initialize :set_defaults

  # defaults
  def set_defaults
    self.main_image ||= Placeholder.image_generator(600, 400)
    self.thumb_image ||= Placeholder.image_generator(350, 200)
  end
end
