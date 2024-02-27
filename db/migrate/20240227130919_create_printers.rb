class CreatePrinters < ActiveRecord::Migration[7.0]
  def change
    create_table :printers do |t|

      t.timestamps
    end
  end
end
