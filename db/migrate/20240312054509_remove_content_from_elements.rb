class RemoveContentFromElements < ActiveRecord::Migration[7.1]
  def change
    remove_column :elements, :content
  end
end
