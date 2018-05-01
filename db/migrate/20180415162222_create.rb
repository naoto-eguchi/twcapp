class Create < ActiveRecord::Migration[5.1]
  def change
    create_table :twcs do |t|
      t.text:content
    end
  end
end
