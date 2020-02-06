class CreateTempFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :temp_files do |t|
      t.string :file

      t.timestamps null: false
    end
  end
end
