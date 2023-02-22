class AddTimestampsToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articless, :created_at, :datetime
    add_column :articless, :updated_at, :datetime
  end
end