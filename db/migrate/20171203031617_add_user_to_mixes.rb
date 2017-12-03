class AddUserToMixes < ActiveRecord::Migration[5.1]
  def change
    add_reference :mixes, :user, foreign_key: true
  end
end
