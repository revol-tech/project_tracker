class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.String :name
      t.string :trait

      t.timestamps
    end
  end
end
