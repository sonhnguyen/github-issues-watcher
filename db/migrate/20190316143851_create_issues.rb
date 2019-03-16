class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.text :description
      t.integer :status, default: 0
      t.datetime :opened_at
      t.integer :issue_id

      t.timestamps

    end
  end
end
