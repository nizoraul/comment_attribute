class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users, comment: "comment_users" do |t|
      t.string :first_name, comment: 'comment_first_name'
      t.string :last_name, comment: 'comment_last_name'
    end
  end
end
