class CreateBuilds < ActiveRecord::Migration[7.0]
  def change
    create_table :builds do |t|

      t.text :project_name
      t.text :build_name
      t.integer :machine
      t.integer :material
      t.date :date
      t.integer :user 
      t.text :attachments 
      t.text :build_file
      t.text :comment
      t.text :parameter
      t.date :last_update
      t.text :completion_status
      t.decimal :average_uts, :precision => 15, :scale => 10
      t.decimal :average_modules, :precision => 15, :scale => 10
      t.decimal :average_eab, :precision => 15, :scale => 10
      t.decimal :tensile_raw_data, :precision => 15, :scale => 10

      t.timestamps

    end
    add_foreign_key :builds, :users, column: :user
    add_foreign_key :builds, :materials, column: :material
    add_foreign_key :builds, :machines, column: :machine
  end
  def self.down
    drop_table :materials
  end
end
