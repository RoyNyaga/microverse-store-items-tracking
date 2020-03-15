# frozen_string_literal: true

class CreateMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :measurements do |t|
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true
      t.string :measurement

      t.timestamps
    end
  end
end
