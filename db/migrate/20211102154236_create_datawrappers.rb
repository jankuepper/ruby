class CreateDatawrappers < ActiveRecord::Migration[6.1]
  def change
    create_table :datawrappers do |t|
      t.string :dataCode
      t.float :value

      t.timestamps
    end
  end
end
