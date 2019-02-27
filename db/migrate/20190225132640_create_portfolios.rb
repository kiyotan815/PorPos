class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.text :description
      t.text :url
      t.text :repository
      t.references :user

      t.timestamps
    end
    add_index :portfolios, [:user_id, :created_at]
  end
end
