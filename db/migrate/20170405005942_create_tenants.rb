class CreateTenants < ActiveRecord::Migration[5.0]
  def change
    create_table :tenants do |t|
      t.string :first_name
      t.string :last_name
      t.integer :apt_number
      t.integer :apartment_id

      t.timestamps
    end
  end
end
