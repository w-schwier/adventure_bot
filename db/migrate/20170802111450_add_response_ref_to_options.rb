class AddResponseRefToOptions < ActiveRecord::Migration[5.1]
  def change
    add_reference :options, :response, foreign_key: true
  end
end
