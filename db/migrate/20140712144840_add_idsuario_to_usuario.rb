class AddIdsuarioToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :id_usuario, :integer
  end
end
