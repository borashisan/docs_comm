class AddMicropostSexTo < ActiveRecord::Migration[5.1]
  def change
    add_column :microposts, :micropost_sex, :integer
  end
end
