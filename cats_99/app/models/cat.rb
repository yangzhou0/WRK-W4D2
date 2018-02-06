class Cat < ApplicationRecord
  validates :birth_date, :color, :name, :sex, :description, presence: true

  has_many :cat_rental_requests,
    foreign_key: :cat_id,
    class_name: :CatRentalRequest,
    dependent: :destroy

    
end
