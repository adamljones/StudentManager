class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :instructor_id
      t.string :firstname
      t.string :lastname
      t.string :email

      t.timestamps
    end
  end
end
