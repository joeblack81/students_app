class ChangeBookmarkableTypeToString < ActiveRecord::Migration[5.0]
  def change
    change_column :bookmarks, :bookmarkable_type, :string
  end
end
