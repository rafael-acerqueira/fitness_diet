class DailyEnergyExpenditure < ApplicationRecord

  enum activities: {
    sedentary: 1.3,
    light_exercise: 1.4,
    moderate_exercise: 1.5,
    heavy_exercise: 1.6,
    athlete: 1.7
  }

  validates :age, :weight, :height, :activity, presence: true

  validates :weight, numericality: true

  validates :age, :height, numericality: { only_integer: true }

end
