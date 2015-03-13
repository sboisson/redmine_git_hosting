class CreateRepositoryGitConfigKeys < ActiveRecord::Migration
  def change
    create_table :repository_git_config_keys do |t|
      t.integer :repository_id
      t.string  :key
      t.string  :value
      t.string  :type
    end

    add_index :repository_git_config_keys, :repository_id
    add_index :repository_git_config_keys, [:key, :type, :repository_id], unique: true, name: :unique_key_name
  end
end
