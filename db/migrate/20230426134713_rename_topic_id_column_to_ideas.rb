class RenameTopicIdColumnToIdeas < ActiveRecord::Migration[6.1]
  def change
    rename_column :ideas, :topic_id, :ouchi_id
  end
end
