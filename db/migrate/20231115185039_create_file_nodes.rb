class CreateFileNodes < ActiveRecord::Migration[7.0]
  def change
    create_table :file_nodes do |t|

      t.timestamps
    end
  end
end
