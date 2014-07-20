class AddIdsuarioToFotocopium < ActiveRecord::Migration
  def change
    add_column :fotocopia, :id_usuario, :integer
  end
end
