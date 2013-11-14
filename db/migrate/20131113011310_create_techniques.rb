class CreateTechniques < ActiveRecord::Migration
  def change
    create_table :techniques do |t|
      t.integer :sash_id
      t.string :name
      t.string :scenario

      t.timestamps
    end
  end
end
