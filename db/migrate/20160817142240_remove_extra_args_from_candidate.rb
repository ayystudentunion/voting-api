class RemoveExtraArgsFromCandidate < ActiveRecord::Migration[5.0]
  def change
    remove_column :candidates, :ssn
  end
end
