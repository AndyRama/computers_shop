class Order < ApplicationRecord
  belongs_to :user
  belongs_to :computer

  monetize :amount_cents
end
