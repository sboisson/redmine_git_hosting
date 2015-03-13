class CreateRepositoryGitExtras < ActiveRecord::Migration
  def change
    create_table :repository_git_extras do |t|
      t.integer :repository_id
      t.string  :default_branch,   default: 'master'
      t.boolean :git_daemon,       default: true
      t.boolean :git_http,         default: false
      t.boolean :git_https,        default: false
      t.boolean :git_go,           default: false
      t.boolean :git_ssh,          default: true
      t.boolean :git_notify,       default: true
      t.boolean :git_annex,        default: false
      t.boolean :protected_branch, default: false
      t.boolean :public_repo,      default: false
      t.text    :urls_order
      t.string  :notification_sender
      t.string  :notification_prefix
      t.string  :key
    end

    add_index :repository_git_extras, :repository_id, unique: true
  end
end
