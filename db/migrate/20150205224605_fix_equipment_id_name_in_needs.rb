class FixEquipmentIdNameInNeeds < ActiveRecord::Migration
  def change

    rename_column(:needs, :eqipment_id, :equipment_id)

  end
end
