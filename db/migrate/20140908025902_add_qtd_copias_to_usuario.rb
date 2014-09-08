class AddQtdCopiasToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :qtdCopias, :integer
  end
end
