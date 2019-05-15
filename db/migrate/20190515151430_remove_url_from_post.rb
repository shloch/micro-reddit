class RemoveUrlFromPost < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :url, :string
  end
end
