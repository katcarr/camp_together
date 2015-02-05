class CreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.column(:email_address, :string)
      t.column(:name, :string)
      t.timestamps()
    end

    add_index :users, :email_address
    add_index :users, :name

  end
end
