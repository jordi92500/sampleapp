class AddRememberDigestToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rember_digest, :string
  end
end
