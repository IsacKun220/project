class CreateAttachments < ActiveRecord::Migration[7.0]
  def change
    create_table :attachments do |t|

      t.text :name
      t.integer :author
      t.integer :privacy_level
      t.text :type
      t.text :body

      t.timestamps
    end
    add_foreign_key :attachments, :users, column: :author
  end
end
