class RemoveAuthorColumnInPosts < ActiveRecord::Migration[7.1]
  def change
    remove_column :posts, :author, :string
  end
end
