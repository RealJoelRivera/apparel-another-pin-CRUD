class OrderItem < ApplicationRecord
  belongs_to :order, optional: true
  belong_to :cart, optional: true
  belongs_to :product
end
