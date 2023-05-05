class AddTopicIdToIdeas < ActiveRecord::Migration[6.1]
  def change
    add_column :ideas, :topic_id, :integer
  end
end
