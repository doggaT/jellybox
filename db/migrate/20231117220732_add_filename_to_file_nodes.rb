class AddFilenameToFileNodes < ActiveRecord::Migration[7.0]
  def change
    add_column :file_nodes, :filename, :string
  end
end
