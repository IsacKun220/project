class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :password
      t.integer :role     # 1-guest, 2-student, 3-lab_personnel, 4-admin
      t.text :training_status
      # t.text : special_permission
      t.date :last_sign_up
      t.text :personal_materials
      t.text :personal_builds

      t.timestamps
    end
    add_foreign_key :users, :materials, column: :personal_materials
    add_foreign_key :users, :builds, column: :personal_builds
  end
end