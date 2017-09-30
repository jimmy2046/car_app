class CreateStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :statuses do |t|
      t.string :mystatus

      t.timestamps
    end
  end
end
