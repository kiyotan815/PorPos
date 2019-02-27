class AddImageColumnToPortfolio < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :image, :string
  end
end
