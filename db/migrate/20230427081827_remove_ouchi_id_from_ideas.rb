class RemoveOuchiIdFromIdeas < ActiveRecord::Migration[6.1]
  def change
    remove_column :ideas, :ouchi_id, :integer
  end
end
