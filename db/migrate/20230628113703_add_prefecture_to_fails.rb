class AddPrefectureToFails < ActiveRecord::Migration[6.0]
  def change
    add_column :fails, :prefecture, :string
  end
end
