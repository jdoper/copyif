class CreateDiretors < ActiveRecord::Migration
  def change
    create_table :diretors do |t|
      t.string :nome
      t.integer :matricula
      t.string :senha
      t.string :diretoria

      t.timestamps
    end
  end
end
