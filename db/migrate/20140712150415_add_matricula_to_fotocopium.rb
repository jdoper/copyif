class AddMatriculaToFotocopium < ActiveRecord::Migration
  def change
    add_column :fotocopia, :matricula, :integer
  end
end
