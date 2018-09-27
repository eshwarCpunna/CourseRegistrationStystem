class CreateSemesters < ActiveRecord::Migration[5.2]
def up
    create_table :semesters do |t|
      t.string :no_eligibleELectives
      t.timestamps
    end
    
  end
  def down
      drop_table :semesters
    end
end
