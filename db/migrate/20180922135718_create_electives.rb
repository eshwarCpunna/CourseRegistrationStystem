class CreateElectives < ActiveRecord::Migration[5.2]
  def up
    create_table :electives do |t|
      t.string :ename
      t.string :semid
      t.integer :ecredits
      t.references :tutor, foreign_key: true
      t.references :department, foreign_key: true
      t.timestamps
    end
    execute <<-SQL
        ALTER TABLE electives
        AUTO_INCREMENT = 8000;
    SQL
  end
  def down
      drop_table :electives
    end
end