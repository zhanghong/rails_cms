class CreateCoreEditors < ActiveRecord::Migration[8.0]
  def change
    create_table :core_editors do |t|
      t.timestamps
    end
  end
end
