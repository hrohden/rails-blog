class ChangeUpdateAtNullInPosts < ActiveRecord::Migration[7.1]
  def change
    change_column_null :posts, :updated_at, true
    change_column_null :posts, :published, true
  end
end
