class CreateFavedDefinitions < ActiveRecord::Migration
  def change
    create_table :faved_definitions do |t|
      t.string :word, null: false
      t.string :definition, null: false
      t.references :user

      t.timestamps(null: false)
    end
  end
end
