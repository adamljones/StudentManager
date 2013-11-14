class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :firstname
      t.string :lastname
      t.string :email

      t.timestamps
    end
  end
end
