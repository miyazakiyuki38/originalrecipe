class Recipe < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :comments

  def self.search(search)
    if search != ""
      Recipe.where('text LIKE(?)', "%#{search}%")
    else
      Recipe.all
    end
  end
end
