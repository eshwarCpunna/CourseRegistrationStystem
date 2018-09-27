class CreateRequests < ActiveRecord::Migration[5.2]
  def up
    create_table :requests do |t|
    	#t.integer :rid, primary_key: true
    	t.integer :status
    	t.text :comments
      t.references :elective, foreign_key: true
    	t.references :student, foreign_key: true
      t.timestamps
    end
    
  end
  def down
      drop_table :requests
    end
end