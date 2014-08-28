class AddRelatedProductNameToProducts < ActiveRecord::Migration
  def change
    add_column :products, :related_product_name, :string
  end
end
