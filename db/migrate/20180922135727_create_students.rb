class CreateStudents < ActiveRecord::Migration[5.2]
  def up
    create_table :students do |t|
      #t.string :sid, primary_key: true
      t.string :sname
      t.string :j_year
      t.string :email
      t.string :smobile
      t.string :semobile
      t.string :password_digest
      t.references :department, foreign_key: true
      t.references :semester, foreign_key: true
      t.timestamps
    end
    execute <<-SQL
        ALTER TABLE students
        AUTO_INCREMENT = 18000;
    SQL
  end
  def down
      drop_table :students
    end
end