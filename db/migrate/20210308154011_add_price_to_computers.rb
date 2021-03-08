class AddPriceToComputers < ActiveRecord::Migration[6.0]
  def change
    add_monetize :computers, :price, currency: { present: false }
  end
end
