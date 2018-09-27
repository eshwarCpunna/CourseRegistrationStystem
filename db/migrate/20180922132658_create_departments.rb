class CreateDepartments < ActiveRecord::Migration[5.2]
  def up
    create_table :departments do |t|
      t.string :depname
      t.timestamps
    end
  
  end
   def down
      drop_table :departments
    end
end
