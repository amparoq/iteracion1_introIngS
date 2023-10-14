class Task < ApplicationRecord

    enum status: {
        pending: 0,
        finished: 1
    }

end
