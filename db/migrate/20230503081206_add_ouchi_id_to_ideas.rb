class AddOuchiIdToIdeas < ActiveRecord::Migration[6.1]
  def change
    add_column :ideas, :ouchi_id, :integer
  end
end
