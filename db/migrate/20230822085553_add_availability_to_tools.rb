class AddAvailabilityToTools < ActiveRecord::Migration[7.0]
  def change
    add_column :tools, :availability, :boolean, default: true
  end
end
