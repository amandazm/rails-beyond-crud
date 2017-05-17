class Restaurant < ApplicationRecord
  # if a restaurant is destroyed all the reviews of it are going to die!!!!
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :stars, inclusion: { in: [1,2,3], allow_nil: false }
end
