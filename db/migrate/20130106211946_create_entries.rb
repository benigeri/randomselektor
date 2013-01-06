class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.boolean :selected

      t.timestamps
    end
  end
end
