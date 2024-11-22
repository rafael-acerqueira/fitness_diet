class DailyEnergyExpendituresController < ApplicationController

  def new
    @daily_energy_expenditure = DailyEnergyExpenditure.new
  end

  def create
  end
end