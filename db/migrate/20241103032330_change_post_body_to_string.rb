class ChangePostBodyToString < ActiveRecord::Migration[7.2]
  def change
    change_column :posts, :body, :string
  end
end
