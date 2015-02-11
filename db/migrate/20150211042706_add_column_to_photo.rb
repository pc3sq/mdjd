class AddColumnToPhoto < ActiveRecord::Migration
  def change
    add_reference :photos, :gallery, index: true
  end
end
