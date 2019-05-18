class Role < ApplicationRecord
    connects_to database: { writing: :primary, reading: :secondary}

end
