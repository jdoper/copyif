class AddCheckToFotocopia < ActiveRecord::Migration
  def change
    add_column :fotocopia, :check, :integer
  end
end
