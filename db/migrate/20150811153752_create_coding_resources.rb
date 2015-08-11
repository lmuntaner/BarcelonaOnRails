class CreateCodingResources < ActiveRecord::Migration
  def change
    create_table :coding_resources do |t|
      t.string :title, null: false
      t.string :description

      t.timestamps null: false
    end
  end
end
