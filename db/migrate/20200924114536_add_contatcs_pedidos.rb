class AddContatcsPedidos < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :requests, :string
    add_column :contacts, :Address, :string
    add_column :contacts, :price, :decimal
    add_column :contacts, :payment, :string
  end
end
