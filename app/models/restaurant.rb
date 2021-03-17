class Restaurant < ApplicationRecord
  has_many :foods
  has_many :line_foods, through: :foods
  belongs_to :order, optional: true

  validates :name, length: {maximum: 30}
  validates :fee, numericality: {greater_than: 0}

  with_options presence: true do
    validates :name
    validates :fee
    validates :time_required
  end
end