# -*- encoding : utf-8 -*-
class AddLimiteToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :limite, :integer
  end
end
