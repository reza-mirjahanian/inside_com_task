require "test_helper"

class CostServiceTest < ActiveSupport::TestCase
  OPERATION_ZERO_HOUR = 0
  OPERATION_50_HOURS = 50

  def setup

    # Edge case == 0
    @service_zero = CostService.new(
      OPERATION_ZERO_HOUR,
      4,
      4,
      5
    )

    # Under 100 hours
    @service50 = CostService.new(
      OPERATION_50_HOURS,
      4,
      4,
      5
    )
  end

  test 'calculate returns correct totals for edge cases' do
    expected0 = { #  == 0
                  total_required_fluorescent_units: 0,
                  total_required_fluorescent_tubes: 0,
                  total_required_fluorescent_tubes_cost: 0
    }
    assert_equal expected0, @service_zero.calculate

    expected50 = { # Under 100 hours
                   total_required_fluorescent_units: 4,
                   total_required_fluorescent_tubes: 4 * 4,
                   total_required_fluorescent_tubes_cost: 4 * 4 * 5
    }
    assert_equal expected50, @service50.calculate

  end

  test 'single_unit_repair_times should return correct number for one fluorescent unit' do
    assert_equal 0, @service_zero.single_unit_repair_times(OPERATION_ZERO_HOUR) # Edge case == 0
    assert_equal 1, @service50.single_unit_repair_times(OPERATION_50_HOURS) # Under 100 hours
  end

  test 'life_of_new_fluorescent_unit should return a value between 100 and 200.' do

    20.times do
      life_of_new_fluorescent_units = @service_zero.life_of_new_fluorescent_unit
      assert_operator 100, :<=, life_of_new_fluorescent_units
      assert_operator 200, :>=, life_of_new_fluorescent_units
    end

    20.times do
      life_of_new_fluorescent_units = @service50.life_of_new_fluorescent_unit
      assert_operator 100, :<=, life_of_new_fluorescent_units
      assert_operator 200, :>=, life_of_new_fluorescent_units
    end
  end

end