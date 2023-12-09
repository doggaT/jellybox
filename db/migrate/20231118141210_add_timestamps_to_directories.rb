class AddTimestampsToDirectories < ActiveRecord::Migration[7.0]
  def change
    change_table :directories do |t|
      t.timestamps default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
