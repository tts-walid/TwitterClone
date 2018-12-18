class Tag < ApplicationRecord
<<<<<<< HEAD
=======
    has_many :tweet_tags
    has_many :tweets, through: :tweet_tags
>>>>>>> day2
end
