class CreateMaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :materials do |t|
     t.text :material_name,  :null => false
     t.text :attachments_texts
     t.decimal :melting_point, precision: 4, scale: 1
     t.decimal :solid_point, precision: 4, scale: 1
     t.integer :quantity
     t.text :location
     t.date :last_stocked
     t.integer :privacy_level
     t.decimal :tensile_strength, precision: 4, scale:2
     t.text :flow_additive
     t.string :availability
      t.timestamps
    end
  end
end
