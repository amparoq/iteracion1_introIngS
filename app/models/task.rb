class Task < ApplicationRecord

    belongs_to :user

    enum status: {
        pending: 0,
        finished: 1
    }

end
