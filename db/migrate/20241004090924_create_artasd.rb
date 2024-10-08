class CreateArtasd < ActiveRecord::Migration[7.2]
  def change
    create_table :artasds do |t|
      t.timestamps
    end
  end
end
