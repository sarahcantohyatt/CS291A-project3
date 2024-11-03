class ChangeCommentBodyToString < ActiveRecord::Migration[7.2]
  def change
    change_column :comments, :body, :string
  end
end
