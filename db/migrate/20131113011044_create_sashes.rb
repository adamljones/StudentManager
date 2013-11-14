class CreateSashes < ActiveRecord::Migration
  def change
    create_table :sashes do |t|
      t.string :colour

      t.timestamps
    end
  end
end
