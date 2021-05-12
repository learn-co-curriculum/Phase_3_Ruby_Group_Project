class Recipe < ActiveRecord::Base
    has_many :produces
    has_many :seasons, through: :produces

    def consistent_data
        self.to_json({
            include: {
            produces: {
                include: :season
            }
            }
        })
    end
end