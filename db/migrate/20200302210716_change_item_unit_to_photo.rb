# frozen_string_literal: true

class ChangeItemUnitToPhoto < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :unit, :photo
  end
end
