class AddSrcToCovers < ActiveRecord::Migration
  def change
    add_column :covers, :src, :string

  end
end
