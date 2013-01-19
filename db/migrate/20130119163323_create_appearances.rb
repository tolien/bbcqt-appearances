class CreateAppearances < ActiveRecord::Migration
  def change
    create_table :appearances do |t|
      t.date :date

      t.timestamps
    end
  end
end
