class AddCreatedAtToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :created_at, :datetime
  end
end
