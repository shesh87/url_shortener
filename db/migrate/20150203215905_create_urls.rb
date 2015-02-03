class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
    	t.string :current_url
    	t.string :new_url
      t.timestamps null: false
    end
  end
end
