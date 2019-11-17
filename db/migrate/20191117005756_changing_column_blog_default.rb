class ChangingColumnBlogDefault < ActiveRecord::Migration[6.0]
  def change
  	change_column :blogs, :status, :integer, :default => 0
  end
end
