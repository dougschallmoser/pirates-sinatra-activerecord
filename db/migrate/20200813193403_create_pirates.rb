class CreatePirates < ActiveRecord::Migration[6.0]
  def change
    create_table :pirates do |t|
      t.string :name
      t.string :weight
      t.string :height
    end 
  end
end
