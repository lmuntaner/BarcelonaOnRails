class LevelAndReferenceInCodingResource < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.string :title, null: false

      t.timestamps null: false
    end

    add_column :coding_resources, :level_id, :integer
  end
end
