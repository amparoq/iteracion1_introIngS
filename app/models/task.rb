class Task < ApplicationRecord

    belongs_to :user
    has_many :comments
    belongs_to :group

    enum status: {
        pending: 0,
        finished: 1
    }

end
