class CreateRamons < ActiveRecord::Migration[5.1]
  def change
    create_table :ramons do |t|
      t.references :posts, foreign_key: true
      t.references :blogger, foreign_key: true

      t.timestamps
    end
  end
end
