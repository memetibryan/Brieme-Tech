class Customers < ActiveRecord::Migration[5.1]
  def change
  	create_table :customers do |t|
  		t.column :name, :text
  		t.column :email, :text
  		t.column :telephone, :bigint
  		t.column :residence, :text

  		t.timestamps
  	end
  end
end
