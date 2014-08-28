class AddRelatedProductIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :related_product_id, :integer
  end
end
