class CreatePrinters < ActiveRecord::Migration[7.0]
  def change
    create_table :printers do |t|
      t.text :printer_name
      t.text :attachment
      t.text :printer_parameters
      # t.text :author
      t.date :creation

      t.timestamps
    end
    add_foreign_key :printers, :attachments, column: :attachment
  end
end
