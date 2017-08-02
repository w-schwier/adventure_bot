class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
      t.text :message
      t.integer :next_response_id

      t.timestamps
    end
  end
end
