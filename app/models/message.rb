#
class Message < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates_presence_of :title, message: 'Ne peut étre vide'
  validates_presence_of :description, message: 'Ne peut étre vide'
  validates :title,
            length: { in: 3..40, message: 'Le titre doit contenir entre
                      6 à 40 caractéres' }
  validates :description,
            length: { in: 20..3000, message: 'Le titre doit contenir entre
                      20 à 300 caractéres' }
end
