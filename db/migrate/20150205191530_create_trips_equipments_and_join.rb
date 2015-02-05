class CreateTripsEquipmentsAndJoin < ActiveRecord::Migration
  def change
    create_table(:trips) do |t|
      t.column(:name, :string)
      t.column(:description, :string)
      t.belongs_to :user, index:true
      t.timestamps null:false

    end

    add_index(:trips, :name)

    create_table(:equipments) do |t|
      t.column(:name, :string)
      t.timestamps null:false
    end

    add_index(:equipments, :name)

    create_table(:needs) do |t|
      t.column(:taken, :boolean)
      t.column(:importance, :string)
      t.belongs_to(:trip)
      t.belongs_to(:camper)
      t.belongs_to(:eqipment)
      t.timestamps null:false
    end

    add_index(:needs, :importance)

    create_table(:campers) do |t|
      t.column(:name, :string)
      t.belongs_to :trip, index:true
      t.timestamps null:false
    end

    add_index(:campers, :name)

  end
end
