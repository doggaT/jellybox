class CreateDirectories < ActiveRecord::Migration[7.0]
  def change
    create_table :directories, timestamps: false do |t|
      t.string :name
      t.integer :parent_id
    end
  end
end
