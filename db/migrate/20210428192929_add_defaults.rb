class AddDefaults < ActiveRecord::Migration[6.1]
  def up
    change_column_default(:tests, :level, 1)
    change_column_default(:answers, :correct, true)
  end

  def down
    change_column_default(:tests, :level, nil)
    change_column_default(:answers, :correct, nil)
  end
end
