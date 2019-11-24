class Topic < ApplicationRecord
  has_many :blogs, dependent: :destroy
  validates :title, presence: true
end
