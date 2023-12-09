class RenameFileToFileNode < ActiveRecord::Migration[7.0]
  def change
    rename_table :files, :file_nodes
  end
end
