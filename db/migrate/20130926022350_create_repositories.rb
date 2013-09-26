class CreateRepositories < ActiveRecord::Migration
  def change
    create_table :repositories do |t|
      t.string :title
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
