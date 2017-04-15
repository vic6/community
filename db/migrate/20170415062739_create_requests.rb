class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.integer :requester_id
      t.integer :acceptor_id
      t.integer :package_id

      t.timestamps
    end
  end
end
