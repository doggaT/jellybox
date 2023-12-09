class AddUniqueConstraintToDirectoryName < ActiveRecord::Migration[7.0]
  def change
    add_index :directories, :name, unique: true
  end
end
