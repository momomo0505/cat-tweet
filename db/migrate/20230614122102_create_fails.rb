class CreateFails < ActiveRecord::Migration[6.0]
  def change
    create_table :fails do |t|
      t.timestamps
      t.string :title, null: false
      t.text :story, null: false
      t.references :user, null: false, foreign_key: true
    end
  end
end
