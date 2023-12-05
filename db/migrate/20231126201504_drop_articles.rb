class DropArticles < ActiveRecord::Migration[7.1]
  def change
    drop_table :frineds
  end
end
