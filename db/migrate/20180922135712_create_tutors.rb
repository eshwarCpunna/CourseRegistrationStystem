class CreateTutors < ActiveRecord::Migration[5.2]
  def up
    create_table :tutors do |t|
      t.string :tname
      t.string :tdesg
       t.string :password_digest
      t.string :temail
      t.references :department, foreign_key: true
      t.timestamps
    end
    execute <<-SQL
        ALTER TABLE tutors
        AUTO_INCREMENT = 5000;
    SQL
  
  end
    def down
      drop_table :tutors
    end
end
