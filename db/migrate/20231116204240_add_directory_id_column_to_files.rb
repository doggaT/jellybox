class AddDirectoryIdColumnToFiles < ActiveRecord::Migration[7.0]
  def change
    add_reference :file_nodes, :directory, null: false, foreign_key: true
  end
end
