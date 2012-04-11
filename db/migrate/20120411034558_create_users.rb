class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :pwd
      t.integer :category

      t.timestamps
    end
  end
end
