class CalculateController < ApplicationController

  TUBE_PRICE = 7
  TUBES_IN_UNIT = 4
  FLUORESCENT_UNITS_COUNT = 4
  CLASSROOM_HOURS_ELAPSED = 9 * 4 * 5 * 15  #todo Determine the precise number of weeks in a calendar year.
  # CLASSROOM_HOURS_ELAPSED = 300  #todo Determine the precise number of weeks in a calendar year.

  def cost

    result = CostService.new(CLASSROOM_HOURS_ELAPSED,FLUORESCENT_UNITS_COUNT,TUBES_IN_UNIT,TUBE_PRICE).calculate

    render json: result

  end
end
