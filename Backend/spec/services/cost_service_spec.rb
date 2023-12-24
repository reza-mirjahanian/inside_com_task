require 'rspec'
require_relative '../../app/services/cost_service'
describe 'CostService' do
  OPERATION_9_MONTHS = 9 * 4 * 5 * 15
  USD_PRICE = 7
  before do
    # 15 hours a day, 5 times a week, 9 months a year
    @service9_months = CostService.new(
      OPERATION_9_MONTHS,
      1,
      4,
      USD_PRICE
    )
  end

  it 'calculate returns correct totals for one year' do

    # Stub rand function
    allow(@service9_months).to receive(:life_of_new_fluorescent_unit).and_return(100)
    expected9_months = { # 9 months
                         total_required_fluorescent_units: 27,
                         total_required_fluorescent_tubes: 27 * 4,
                         total_required_fluorescent_tubes_cost: 27 * 4 * USD_PRICE
    }
    calculate = @service9_months.calculate
    expect(calculate).to eq(expected9_months)

    allow(@service9_months).to receive(:life_of_new_fluorescent_unit).and_return(100, 110, 120, 130, 140, 150, 160, 170, 180, 190)
    expected9_months = { # 9 months
                         total_required_fluorescent_units: 17,
                         total_required_fluorescent_tubes: 17 * 4,
                         total_required_fluorescent_tubes_cost: 17 * 4 * USD_PRICE
    }
    calculate = @service9_months.calculate
    expect(calculate).to eq(expected9_months)

  end
end

