class Messages < ActiveRecord::Migration[5.1]
  def change
  	create_table :messages do |t|
  		t.column :messages, :text
  	end
  end
end
