# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cat < ApplicationRecord 
    @@CAT_COLORS = ["white", "gray", "black", "calico", "yellow", "orange", "red"]

    validates :birth_date, presence: true
    validate :birth_date_cannot_be_future
    validates :color, inclusion: { in: @@CAT_COLORS, message: "Not a valid color"}  
    validates :name, presence: true 
    validates :sex, inclusion: {in: %w(M F), message: "Not a valid sex"}
    

    def birth_date_cannot_be_future  
        if birth_date.to_date.future? 
            errors.add(:birthdate, "Not a valid date")
        end
    end
end
