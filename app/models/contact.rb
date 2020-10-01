class Contact < ApplicationRecord

  validates :name, presence: true, length: { maximum: 50 }
  validates :phone, presence: true
  validates :requests, presence: true
  validates :Address, presence: true
  validates :price, presence: true
  validates :payment, presence: true

  belongs_to :user

end
