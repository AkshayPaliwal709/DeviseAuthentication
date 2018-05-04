class Contactnew < ActiveRecord::Migration[5.2]
  def up
    add_column :contacts, :member_id, :string
  end

  def down
    remove_column :contacts, :member_id, :string
  end
end
