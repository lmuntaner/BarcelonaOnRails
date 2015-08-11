class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.string :title
      t.references :coding_resource

      t.timestamps null: false
    end
  end
end
