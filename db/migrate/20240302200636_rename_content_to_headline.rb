class RenameContentToHeadline < ActiveRecord::Migration[7.1]
  def change
    rename_column :posts, :content, :headline
  end
end
