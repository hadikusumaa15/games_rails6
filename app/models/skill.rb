class Skill < ApplicationRecord
    connects_to database: { writing: :primary, reading: :secondary}

end
