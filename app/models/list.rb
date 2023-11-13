class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  belongs_to :user

  validates :name, presence: true, uniqueness: true
end
