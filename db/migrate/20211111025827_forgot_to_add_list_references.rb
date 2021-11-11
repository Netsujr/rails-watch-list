class ForgotToAddListReferences < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookmarks, :list, foreign_key: true
  end
end
