class CreateTablePeopleAppearances < ActiveRecord::Migration
  def change
    create_table :appearances_people, :id => false do |t|
      t.references :person, :null => false
      t.references :appearance, :null => false
    end
    add_index(:appearances_people, [:person_id, :appearance_id], :unique => true)
  end
  
end
