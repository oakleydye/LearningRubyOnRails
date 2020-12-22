class AddStatusToArticles < ActiveRecord::Migration[6.1]
  def change
    change_table :articles do |t|
      t.string :status, :default => "public"
    end
    Article.update_all ["status = ?", "public"]
  end
end
