class Recipe < ActiveRecord::Base
  belongs_to :chef
  validates :chef_id, presence: true
  validates :name, presence: true, length: { minimum: 3, maximum: 100 }
  validates :summary, presence: true, length: { minimum: 8, maximum: 150 }
  validates :description, presence: true, length: { minimum: 15, maximum: 500 }
end
