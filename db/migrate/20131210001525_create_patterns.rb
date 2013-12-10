class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.integer :pattern_type_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
