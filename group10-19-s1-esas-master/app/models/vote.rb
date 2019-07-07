class Vote < ApplicationRecord
    belongs_to :voter, optional: true
end
