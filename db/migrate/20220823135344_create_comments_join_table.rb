class CreateCommentsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :comments, :users
  end
end
