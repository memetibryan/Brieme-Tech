class Credits < ActiveRecord::Migration[5.1]
  def change
  	create_table :credits do |t|
  		t.column :name, :text
  		t.column :telephone, :bigint
  		t.column :price, :bigint
  		t.column :credit_amount, :bigint
  		t.column :user_id, :integer

  		t.timestamps
  	end
  end
end