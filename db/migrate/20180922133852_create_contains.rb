class CreateContains < ActiveRecord::Migration[5.2]
  def up
      create_table :contains do |t|
    	t.references :semester, foreign_key: true
    	t.references :department, foreign_key: true
      t.timestamps
    end
    
  end
  def down
      drop_table :contains
  end
end
