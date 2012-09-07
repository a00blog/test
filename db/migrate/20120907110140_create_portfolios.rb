class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :title_o
      t.string :image_url
      t.string :image_url_pr
      t.string :name
      t.string :content_type
      t.binary :data, :limit => 2.megabyte
      t.timestamps
    end
  end
end
