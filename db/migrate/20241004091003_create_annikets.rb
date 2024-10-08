class CreateAnnikets < ActiveRecord::Migration[7.2]
  def change
    create_table :annikets do |t|
      t.string :title
      t.text :description
      t.string :xyz
      t.text :crm
      t.timestamps
    end
  end
end
