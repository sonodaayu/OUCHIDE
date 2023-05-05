class CreateOuchis < ActiveRecord::Migration[6.1]
  def change
    create_table :ouchis do |t|
      t.string :topic

      t.timestamps
    end
  end
end
